# coding: utf-8
from sqlalchemy import Column, Integer, String
from sqlalchemy.schema import FetchedValue
from flask_sqlalchemy import SQLAlchemy


db = SQLAlchemy()



class User(db.Model):
    __tablename__ = 'users'

    id = db.Column(db.Integer, primary_key=True, server_default=db.FetchedValue())
    username = db.Column(db.String)
    password = db.Column(db.String)
    register_date = db.Column(db.String)
