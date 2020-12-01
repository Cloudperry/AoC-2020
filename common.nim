import os, strutils

proc getInput*(): seq[string] =
  for line in lines(getCurrentDir() & "/input.txt"):
    result.add(line)

proc getInputAsInt*(): seq[int] =
  for line in lines(getCurrentDir() & "/input.txt"):
    result.add parseInt(line)
