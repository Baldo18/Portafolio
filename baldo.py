from flask import Flask
from flask import request 
from flask import render_template
from flask import redirect
from flask import url_for

app = Flask(__name__)


@app.get('/')
def baldo():
    return render_template('portafolio.html')

    
if __name__ == '__main__':
    app.run('0.0.0.0', 8082, debug=True)