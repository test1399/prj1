from flask import Flask, session,request, render_template
from flask_session import Session
from models import *
import csv

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
	book = Book.query.filter_by(isbn=isbn).first()
	
	if request.method=="POST":
		rating = request.form.get("rating")
		desc = request.form.get("desc")
		book.rating = None_to_zero(book.rating)+int(rating)
		book.rating_num= None_to_zero(book.rating_num)+1		
		review = Review(book_id=book.id, desc=desc)
		db.session.add(review)
		db.session.commit()
		
		
	return render_template("book.html", book=book)