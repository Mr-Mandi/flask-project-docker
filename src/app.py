from flask import Flask, render_template 

app = Flask(__name__)

@app.route('/home')
def home():
    return render_template('home.html', message="Hello World")

@app.route('/')
def index():
    return "hola"


if __name__ == '__main__':
    app.run(debug=True , port=5003 , host='0.0.0.0')