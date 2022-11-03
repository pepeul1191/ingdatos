#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import Bottle, run, template, static_file, request
from database import engine

app = Bottle()

@app.route('/:filename#.*#')
def send_static(filename):
  return static_file(filename, root='./static')

@app.route('/', method='GET')
def home():
  return template('home')

@app.route('/genero', method='GET')
def genero():
  conn = engine.connect()
  stmt = ("""
    SELECT * FROM generos
  """).format()
  generos = [dict(r) for r in conn.execute(stmt)]
  locals = {'generos': generos}
  return template('genero/index', locals)

@app.route('/genero/editar', method='GET')
def genero_editar():
  genero_id = int(request.params.id)
  conn = engine.connect()
  stmt = ("""
    SELECT * FROM generos WHERE id={}
  """).format(genero_id)
  genero = conn.execute(stmt).fetchone()
  locals = {'genero': genero}
  return template('genero/detail', locals)

if __name__ == '__main__':
  run(
    app, 
    host='0.0.0.0', 
    port=8081, 
    debug=True, 
    reloader=True
  )