from bottle import run, route, template, static_file, error, request
import requests, os


response = requests.get('http://apis.is/concerts')

data = response.json()

@route('/')
def lidurb():
    return template('index')

@route('/new_user', method="POST")
def new_user():
    email=request.forms.email
    user=request.forms.user
    password=request.forms.password
    return template('new_user', email=email, user=user, password=password)

@route('/concerts')
def index():
    return template('concerts',data=data)


@route('/static/<filename>')
def static_server(filename):
    return static_file(filename,root=('./static_files'))

run()
