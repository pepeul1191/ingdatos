#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import Bottle, run, template, static_file, request, redirect
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
  # pametros
  genero_id = int(request.params.id)
  # acceso de db
  conn = engine.connect()
  stmt = ("""
    SELECT * FROM generos WHERE id={}
  """).format(genero_id)
  genero = conn.execute(stmt).fetchone()
  # devolver datos a una vista
  locals = {'genero': genero}
  return template('genero/detail', locals)

@app.route('/genero/grabar', method='POST')
def genero_grabar():
  # pametros
  genero_id = int(request.params.id)
  nombre = request.params.nombre
  # acceso de db
  conn = engine.connect()
  stmt = ("""
    UPDATE generos SET 
      nombre='{}' 
      WHERE id={}
  """).format(nombre, genero_id)
  conn.execute(stmt)
  # devolver datos a una vista
  redirect('/genero')

if __name__ == '__main__':
  run(
    app, 
    host='0.0.0.0', 
    port=8081, 
    debug=True, 
    reloader=True
  )