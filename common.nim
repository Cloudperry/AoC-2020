import os, strutils

proc getInput*(filename = "input.txt"): seq[string] =
  for line in lines(getCurrentDir() & '/' & filename):
    result.add(line)

proc getInputAsInt*(filename = "input.txt"): seq[int] =
  for line in lines(getCurrentDir() & '/' & filename):
    result.add parseInt(line)
