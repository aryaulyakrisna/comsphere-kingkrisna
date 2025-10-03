import { getChat, postChat } from "../repositories/chatRepository.js";

export const getChatController = async (req, res) => {
  try {
    const { user_id } = req.query;
    const result = await getChat(user_id);

    res.status(200).json({
      message: "Data is sent",
      data: result,
    });
  } catch (err) {
    console.error({ error: err });
    res.status(500).json({ error: "Internal server error" });
  }
};

export const postChatController = async (req, res) => {
  try {
    const { user_id } = req.user;
    const { chat, chat_from } = req.body;
    const result = await postChat(user_id, chat, chat_from);

    res.status(200).json({
      message: "Data is sent",
      data: result,
    });
  } catch (err) {
    console.error({ error: err });
    res.status(500).json({ error: "Internal server error" });
  }
};
