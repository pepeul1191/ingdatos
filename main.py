#!/usr/bin/env python
# -*- coding: utf-8 -*-
from bottle import Bottle, run

app = Bottle()

@app.route('/', method='GET')
def home():
  return 'hola mundo'

if __name__ == '__main__':
  run(
    app, 
    host='0.0.0.0', 
    port=8081, 
    debug=True, 
    reloader=True
  )