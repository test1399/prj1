from flask import Flask, render_template, request,session,redirect
from models import *
from datetime import datetime
from flask_session import Session
import hashlib



app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql+psycopg2://postgres:123@localhost/prj1"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
db.init_app(app)

app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)


@app.route("/")
def index():
	if session.get("authorize"):
		return "You are authorize user"
	else:
		return "Hello world!"


@app.route("/register", methods=["GET","POST"])
def register():
	if request.method=="POST":
		username = request.form.get("username")
		password = request.form.get("password")
		password = hashlib.sha1(password.encode()).hexdigest()
		now = datetime.now()
		register_date = str(now.year)+"/"+str(now.month)+"/"+str(now.day)
		user = User(username=username, password=password, register_date=register_date)
		db.session.add(user)
		db.session.commit()
		return "User registered successfully"
	else:
		return render_template("register.html")
		
@app.route("/login", methods=["GET","POST"])
def login():
	if session.get("authorize"):
		return redirect("/",302)
	if request.method=="POST":
		username = request.form.get("username")
		password = request.form.get("password")
		password = hashlib.sha1(password.encode()).hexdigest()
		user = User.query.filter_by(username=username).first()
		if user is not None and user.password==password:
			session["authorize"]= True 
			return "You are authorize"
		else:
			return "Bad username or password"
	else:
		return render_template("login.html")