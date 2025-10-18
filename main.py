#!/usr/bin/python3
from importlib import import_module
from sys import path

path.insert(1, "./xyzmtu/")
main = import_module("xyzmtu.main")

main.run()
