import strformat, strutils
import ../common

const
  slopes = [
    (x: 1, y: 1),
    (x: 3, y: 1),
    (x: 5, y: 1),
    (x: 7, y: 1),
    (x: 1, y: 2)
  ]

let
  input = getInput()
  rowLen = input[0].len

var treesHitPerSlope: array[slopes.len, int]
for slopeI, slope in slopes:
  var x, y, treesHit: int
  while y in 0 .. input.high - 1:
    y += slope.y
    x += slope.x
    #echo fmt"checking coordinate ({xCoord}, {rowN})"
    if input[y][x mod rowLen] == '#':
      treesHit += 1
      #echo fmt"hit a tree at ({xCoord}, {rowN})"
  echo fmt"hit {treesHit} trees with slope: {slope}"
  treesHitPerSlope[slopeI] = treesHit

var treesHitMultiplied = 1
for treesHit in treesHitPerSlope:
  treesHitMultiplied *= treesHit
echo "multiplication of trees hit per slope: ", treesHitMultiplied
