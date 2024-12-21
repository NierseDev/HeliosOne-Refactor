import secrets
import config
from flask import Flask, render_template, redirect, url_for, request, session

app = Flask(__name__)
app.secret_key = secrets.token_urlsafe(16)

# ---------------------------------------------------------------------------------------------- #

# App Routes
@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

# Function Routes
