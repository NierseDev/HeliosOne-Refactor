import secrets
import pyrebase
import mysql.connector
from flask import Flask, render_template, redirect, url_for, request, session

app = Flask(__name__)
app.secret_key = secrets.token_urlsafe(16)

# ---------------------------------------------------------------------------------------------- #

def connectDB():
    db = mysql.connector.connect(
        host='localhost',
        user="root",
        database='heliosone-flowerbase'
    )

    return db

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
@app.route('/index', methods=['GET', 'POST'])
def index():
    if request.method == 'GET':
        connect = connectDB()
        cursor = connect.cursor(dictionary=True)
        cursor.execute("SELECT FlowerName, FlowerBotanical, FlowerDescription, NativeRegion, FlowerHeight, imageURL FROM flowers")
        flowers = cursor.fetchall()
        cursor.close()
        connect.close()

        return render_template('index.html', flowers=flowers)
    elif request.method == 'POST':
        query = request.form.get('Search')

        connect = connectDB()
        cursor = connect.cursor(dictionary=True)
        cursor.execute("SELECT FlowerName FROM flowers WHERE FlowerName LIKE %s", (query))
        flowers = cursor.fetchall()
        cursor.close()
        connect.close()
        
        if not results:
            results = [{'FlowerName': 'No Results Found'}]
        return render_template('index.html', flowers=flowers)

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template('login.html')
    elif request.method == 'POST':
        email = request.form.get('Email')
        password = request.form.get('Password')

        try:
            user = auth.sign_in_with_email_and_password(email, password)
            session['user'] = email

            return redirect(url_for('index'))
        except:
            return render_template('login.html', message="Login Failed, Check Details!")

@app.route('/registration', methods=['GET', 'POST'])
def register():
    if request.method == 'GET':
        return render_template('registration.html')
    elif request.method == 'POST':
        email = request.form.get('Email')
        password = request.form.get('Password')

        try:
            auth.create_user_with_email_and_password(email, password)

            redirect(url_for('login'))
        except(Exception):
            message = "Error: Failed to Register User!"
            color = '#a81b1b'

            return render_template('registration.html', message=message, color=color)
        
    

# ---------------------------------------------------------------------------------------------- #

# Function Routes

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('index'))
