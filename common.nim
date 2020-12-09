import os, strutils

proc getInput*(filename = var string): seq[string] =
  if paramCount != 1:
    filename = "input.txt"
  else:
    filename = paramStr(1)
  for line in lines(getCurrentDir() & '/' & filename):
    result.add(line)

proc getInputAsInt*(filename = "input.txt"): seq[int] =
  for line in lines(getCurrentDir() & '/' & filename):
    result.add parseInt(line)
