from flask import Flask
from datetime import datetime
app = Flask(__name__)

@app.route('/')
def hello_world():
   return 'Hello World'

@app.route('/time')
def print_time():
   now_time = datetime.now()
   return str(now_time)

if __name__ == '__main__':
   app.run()