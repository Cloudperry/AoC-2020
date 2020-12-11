import os, strutils

proc getInput*(filename = "input.txt"): seq[string] =
  let filename =
    if paramCount() == 1:
      paramStr(1)
    else:
      filename
  for line in lines(getCurrentDir() & '/' & filename):
    result.add(line)

proc getInputAsInt*(filename = "input.txt"): seq[int] =
  let filename =
    if paramCount() == 1:
      paramStr(1)
    else:
      filename
  for line in lines(getCurrentDir() & '/' & filename):
    result.add parseInt(line)
