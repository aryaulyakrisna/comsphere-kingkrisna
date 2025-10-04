import logging
import time
class Logger:
    def __init__(self, filename='example.log',isPrint=False):
        self.filename = filename
        logging.basicConfig(
            level=logging.INFO,
            format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
            handlers=[
                logging.FileHandler(filename),
            ]
        )
        self.logger = logging.getLogger(__name__)
        self.isPrint = isPrint
    
    def log(self, message):
        timestamp = time.strftime('%Y-%m-%d %H:%M:%S')
        if self.isPrint:
            print(f"[{timestamp}] {message}")
        self.logger.info(f"[{timestamp}] {message}")
    
    def log_error(self, message):
        timestamp = time.strftime('%Y-%m-%d %H:%M:%S')
        if self.isPrint:
            print(f"[{timestamp}] {message}")
        self.logger.error(f"[{timestamp}] {message}")
    
    def log_debug(self, message):
        timestamp = time.strftime('%Y-%m-%d %H:%M:%S')
        if self.isPrint:
            print(f"[{timestamp}] {message}")
        self.logger.debug(f"[{timestamp}] {message}")