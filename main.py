#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import Bottle, run, template, static_file

app = Bottle()

@app.route('/:filename#.*#')
def send_static(filename):
  return static_file(filename, root='./static')

@app.route('/', method='GET')
def home():
  return template('home')

if __name__ == '__main__':
  run(
    app, 
    host='0.0.0.0', 
    port=8081, 
    debug=True, 
    reloader=True
  )