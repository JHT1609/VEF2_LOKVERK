from bottle import run, route, template, static_file, error, request
import os

@route('/')
def lidurb():
    return template('lidurb')

@route('/new_user', method="POST")
def new_user():
    email=request.forms.email
    user=request.forms.user
    password=request.forms.password
    return template('new_user', email=email, user=user, password=password)

run()
