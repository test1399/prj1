#Project 1
#Author: me
#Date: 2020/4/9
#Project description link: https://docs.cs50.net/web/2020/x/projects/1/project1.html


from flask import Flask, session,request, render_template,redirect, jsonify
from flask_session import Session
from models import *
import csv
import hashlib

app = Flask(__name__)

app.config["SQLALCHEMY_DATABASE_URI"] = "postgresql+psycopg2://postgres:123@localhost/prj1"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False
db.init_app(app)

# Configure session to use filesystem
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)


def None_to_zero(x):
	if x is None:
		return 0
	return x


@app.route("/")
def index():
	if session.get("authorize"):
		return "You are authorize user"
	else:
		return "Hello world!"

@app.route("/create")
def create():
	Base = declarative_base()
	

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
		return redirect("/search",302)
	if request.method=="POST":
		username = request.form.get("username")
		password = request.form.get("password")
		password = hashlib.sha1(password.encode()).hexdigest()
		user = User.query.filter_by(username=username).first()
		if user is not None and user.password==password:
			session["authorize"]= user.id 
			return "You are authorize"
		else:
			return "Bad username or password"
	else:
		return render_template("login.html")

@app.route("/logout")
def logout():
	session.pop("authorize")
	return redirect("/",302)
		
@app.route("/importdata")
def importdata():
	f = open("books.csv")
	reader = csv.reader(f)
	prevent_csv_title_add = 1
	for (isbn,title,author,year) in reader:
		if prevent_csv_title_add==1:
			prevent_csv_title_add = 0
			continue		
		book = Book(isbn=isbn, title=title, author=author,year=int(year))
		db.session.add(book)
	db.session.commit()
	return "Import completed successfully"

@app.route("/search", methods=["GET","POST"])
def search():
	if request.method=="POST":
		isbn = request.form.get("isbn","")
		title=request.form.get("title","")
		author = request.form.get("author","")
		books = Book.query.filter(Book.isbn.like(f"%{isbn}%"),
			Book.title.like(f"%{title}%"),
			Book.author.like(f"%{author}%")
			).all()
		return render_template("search.html", books=books)
	else:
		return render_template("search.html")

@app.route("/book/<string:isbn>", methods=["GET","POST"])
def book(isbn):
	user_id=session.get("authorize")
	if user_id==None:
		return redirect("/login",302)
	book = Book.query.filter_by(isbn=isbn).first()
	
	if request.method=="POST" and Review.query.filter_by(user_id=user_id, book_id=book.id).count()==0:
		rating = request.form.get("rating")
		desc = request.form.get("desc")		
		book.rating = None_to_zero(book.rating)+int(rating)
		book.rating_num= None_to_zero(book.rating_num)+1		
		review = Review(user_id=user_id,book_id=book.id, desc=desc)
		db.session.add(review)
		db.session.commit()		
	return render_template("book.html", book=book)

@app.route("/api/<string:isbn>")
def api(isbn):
	book = Book.query.filter_by(isbn=isbn).first()
	if None_to_zero(book.rating_num)>0:
		score= None_to_zero(book.rating)/None_to_zero(book.rating_num)
	else:
		score=0
	return jsonify({"title":book.title,
					"author": book.author,
					"year": book.year,
					"isbn": book.isbn,
					"review_count": None_to_zero(book.rating_num),
					"average_score": score
					})