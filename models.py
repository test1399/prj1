# coding: utf-8
from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.schema import FetchedValue
from sqlalchemy.orm import relationship
from flask_sqlalchemy import SQLAlchemy


db = SQLAlchemy()



class Book(db.Model):
    __tablename__ = 'books'

    id = db.Column(db.Integer, primary_key=True, server_default=db.FetchedValue())
    title = db.Column(db.String)
    author = db.Column(db.String)
    year = db.Column(db.Integer)
    isbn = db.Column(db.String)
    rating = db.Column(db.Integer)
    rating_num = db.Column(db.Integer)



class Review(db.Model):
    __tablename__ = 'reviews'

    id = db.Column(db.Integer, primary_key=True, server_default=db.FetchedValue())
    book_id = db.Column(db.ForeignKey('books.id'))
    desc = db.Column(db.String)
    user_id = db.Column(db.ForeignKey('users.id'))

    book = db.relationship('Book', primaryjoin='Review.book_id == Book.id', backref='reviews')
    user = db.relationship('User', primaryjoin='Review.user_id == User.id', backref='reviews')



class User(db.Model):
    __tablename__ = 'users'

    id = db.Column(db.Integer, primary_key=True, server_default=db.FetchedValue())
    username = db.Column(db.String)
    password = db.Column(db.String)
    register_date = db.Column(db.String)
