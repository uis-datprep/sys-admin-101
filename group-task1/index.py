from flask import Flask, escape, request

app = Flask(__name__)

@app.route('/')
def hello():
    return "Welcome to UiS"

if __name__ == '__main__':
    app.run(port=8080)
