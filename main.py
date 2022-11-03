#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import Bottle, run, template, static_file
from database import engine

app = Bottle()

@app.route('/:filename#.*#')
def send_static(filename):
  return static_file(filename, root='./static')

@app.route('/', method='GET')
def home():
  conn = engine.connect()
  stmt = ("""
    SELECT * FROM generos
  """).format()
  print([dict(r) for r in conn.execute(stmt)])
  return template('home')

if __name__ == '__main__':
  run(
    app, 
    host='0.0.0.0', 
    port=8081, 
    debug=True, 
    reloader=True
  )