from flask import Flask
from datetime import datetime
from flask import request
from flask import render_template
app = Flask(__name__)

message_list = []

def process_input(request:request):
   one_message = request.form.get('msg')
   message_list.append(one_message)

def process_output():
   output_dict = {}
   output_dict['messages'] = message_list

   return output_dict


@app.route('/')
def index():
   process_input(request)
   message_list[0] = "这是一个留言板"
   output_dict = process_output()
   return render_template('echo_ui.jinja2',bean = output_dict,)

@app.route('/echo',methods=["post","get"])
def echo_function():
   process_input(request)
   output_dict = process_output()
   return render_template('echo_ui.jinja2',bean = output_dict)

@app.route('/time')
def print_time():
   now_time = datetime.now()
   return str(now_time)

if __name__ == '__main__':
   app.run()