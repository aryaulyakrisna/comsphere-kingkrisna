from langchain_openai import ChatOpenAI
from langchain_google_genai import ChatGoogleGenerativeAI
from datetime import datetime
import time
import pytz
from langchain_core.messages import HumanMessage,ToolMessage,AIMessage,SystemMessage
from langchain.tools import StructuredTool,Tool
from utils.logger import Logger
import json

logger = Logger(filename='chatbot.log')

class OpenAIBase:
    def __init__(self,api_key,model,base_url=None,temperature=0.8, tools : list[StructuredTool] = [], max_iterations=5, system_prompt="You are a helpful assistant."):
        self.llm = ChatOpenAI(base_url=base_url,api_key=api_key,model=model,temperature=temperature, model_kwargs={"tool_choice": "auto"} )
        self.tools = tools
        self.tool_mapping = {tool.name: tool for tool in self.tools}
        self.max_iterations = max_iterations
        self.system_prompt = system_prompt
        gmt_time = datetime.now(pytz.utc)
        wib_time = datetime.now(pytz.timezone('Asia/Jakarta'))

        self.system_prompt += "\nYDefault timezone is WIB (UTC+7). If the user asks for current time or date, always respond with WIB time."
        self.system_prompt += "\nCurrent Time GMT: " + gmt_time.strftime('%Y-%m-%d %H:%M:%S')
        self.system_prompt += "\nCurrent Time WIB: " + wib_time.strftime('%Y-%m-%d %H:%M:%S') 
        self.message = [SystemMessage(content=self.system_prompt)]

    def run(self):
        if not self.tools:
            llm = self.llm
        else:
            llm = self.llm.bind_tools(self.tools, tool_choice="auto")
        iteration = 0
        
        while iteration < self.max_iterations:
            print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Iterasi {iteration + 1}")

            logger.log(f"\nIterasi {iteration + 1} \n Query : {self.message} \n")
            
            chat = llm.invoke(self.message)
            self.message.append(chat)
            
            if hasattr(chat, "tool_calls") and chat.tool_calls:
                logger.log(f"Memproses {len(chat.tool_calls)} tool calls...")
                print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Memproses {len(chat.tool_calls)} tool calls...")
                
                for tool_call in chat.tool_calls:
                    tool_name = tool_call["name"].lower()
                    print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Menjalankan tool: {tool_name}")
                    
                    tool = self.tool_mapping[tool_name]
                    tool_output = tool.invoke(tool_call['args'])
                    self.message.append(ToolMessage(tool_output, tool_call_id=tool_call['id']))
                
                iteration += 1
            else:
                print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Selesai - tidak ada tool calls lagi")
                break
        
        if iteration >= self.max_iterations:
            print(f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] Maksimum iterasi tercapai: {self.max_iterations}")
        
        return self.message[1:]

    def getMessage(self,query: list[dict]):
        self.message.extend(query)

        logger.log(f"Query: {query}  | Full Message: {self.message}")

        return self.run()
    
class ChatGPTMessage(OpenAIBase):
    def __init__(self, api_key,model="gpt-3.5-turbo",temperature=0.8,tools = [], system_prompt = ""):
        super().__init__(api_key=api_key,model=model,base_url="https://api.openai.com/v1/chat/completions",temperature=temperature,tools=tools,system_prompt=system_prompt)

class OpenRouterMessage(OpenAIBase):
    def __init__(self, api_key,model="x-ai/grok-4-fast:free",temperature=0.8,tools = [], system_prompt = ""):
        super().__init__(api_key=api_key,model=model,base_url="https://openrouter.ai/api/v1/",temperature=temperature,tools=tools,system_prompt=system_prompt)
        
class GeminiMessage(OpenAIBase):
    def __init__(self, api_key,model="gemini-2.0-flash-lite",temperature=0.8,tools = [], system_prompt = ""):
        super().__init__(api_key=api_key,model=model,base_url="https://generativelanguage.googleapis.com/v1beta/openai/",temperature=temperature,tools=tools,system_prompt=system_prompt)

        self.llm = ChatGoogleGenerativeAI(api_key=api_key,model=model)
        