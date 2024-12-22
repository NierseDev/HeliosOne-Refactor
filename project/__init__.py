import secrets
import requests
import pyrebase
from flask import Flask, render_template, redirect, url_for, request, session

app = Flask(__name__)
app.secret_key = secrets.token_urlsafe(16)

# ---------------------------------------------------------------------------------------------- #

def firebaseConfig():
    config = {
          'apiKey': "AIzaSyDVXTjgESKbmDzD4mRiVYzJNIpsCq7P7W8",
          'authDomain': "heliosone-refactor.firebaseapp.com",
          'projectId': "heliosone-refactor",
          'storageBucket': "heliosone-refactor.firebasestorage.app",
          'messagingSenderId': "364970073861",
          'appId': "1:364970073861:web:e71fd4728531179088a16c",
          'measurementId': "G-HYSXC9E34T",
          'databaseURL': ""
    }

    return config

firebase = pyrebase.initialize_app(firebaseConfig())
auth = firebase.auth()

# ---------------------------------------------------------------------------------------------- #

# App Routes
@app.route('/')
@app.route('/index')
def index():
    url = "https://garden-api.p.rapidapi.com/plants"
    headers = {
	    "x-rapidapi-key": "a26d44477amshb6aaab5d2a7e338p193edejsn131e2aa2b543",
	    "x-rapidapi-host": "garden-api.p.rapidapi.com"
    }
    querystring = {"plants":"plant"}
    response = requests.get(url, headers=headers, params=querystring)
    plant_data = response.json()
    print(plant_data)

    return render_template('index.html')

@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/registration')
def register():
    return render_template('registration.html')

# Function Routes