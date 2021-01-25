#!/usr/bin/env/ python3
import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    hostname = os.uname()
    return '{} ti ha risposto.\n'.format(hostname)
