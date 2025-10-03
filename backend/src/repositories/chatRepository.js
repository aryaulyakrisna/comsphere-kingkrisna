import { query } from "express-validator";
import pool from "../config/config.js";
import getFormattedDateTime from "../utils/getFormattedDate.js";

export const getChat = async (user_id) => {
  const [existingChat] = await pool.query(
    "SELECT * FROM t_chat WHERE user_id = ? ORDER BY datetime DESC LIMIT 20",
    [user_id]
  );

  // if (existingChat.length > 0) {
  //   const now = new Date();

  //   const lastChatTime = new Date(
  //     existingChat[existingChat.length - 1].datetime
  //   );
  //   const diffHours = (now - lastChatTime) / (1000 * 60 * 60);

  //   if (diffHours > 24) {
  //     await pool.query("DELETE FROM t_chat WHERE user_id = ?", [user_id]);
  //     return [];
  //   }
  // }

  return existingChat;
};

export const postChat = async (user_id, chat, chat_from) => {
  const chatHistory = await getChat(user_id);

  const chatQuery = [];

  // Reverse the array to get oldest to newest order
  chatHistory.reverse().forEach(element => {
    chatQuery.push({
      role: element.chat_from === "bot" ? "assistant" : "user",
      content: element.chat,
    });
  });

  chatQuery.push({
    role: "user",
    content: chat,
  });

  const payload = {
    query: chatQuery
  };

  // Bentuk chat kalo cuman message (string) kalo json mungkin
  //     { message: "addasdasdas", type: "seat",
  //       {
  //           "seat_id": 4,
  //           "train_code": "MGR-CGK-001",
  //           "seat_code": "A4",
  //           "status": "unbooked",
  //           "amount": 197196
  //       }
  //     }

  const response = await fetch(process.env.MICROSERVICES_URL + "/chat", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(payload),
  });

  if (!response.ok) {
    throw new Error(`API call failed: ${response.statusText}`);
  }

  const botData = await response.json();

  const currentDateTime = getFormattedDateTime();

  const userMessage = {
    user_id,
    chat,
    chat_from,
    datetime: currentDateTime,
  };

  const botMessage = {
    user_id,
    chat: botData.response,
    chat_from: "bot",
    datetime: getFormattedDateTime(),
  };

  const chats = [userMessage, botMessage];

  let lastInsertId = null;

  for (const msg of chats) {
    const [result] = await pool.query(
      "INSERT INTO t_chat (user_id, chat, chat_from, datetime) VALUES (?, ?, ?, ?)",
      [msg.user_id, msg.chat, msg.chat_from, msg.datetime]
    );
    lastInsertId = result.insertId;
  }

  return lastInsertId;
};
