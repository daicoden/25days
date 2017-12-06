input = STDIN.gets.chomp

puts("Input: #{input}")


def botRight(xDist)
  if xDist == 0
    return 1
  end

  return botRight(xDist - 1) + 8*(xDist)
end

def sideLength(xDist)
  if (xDist == 0)
    return 1
  end

  return sideLength(xDist - 1) + 2
end

def contained?(number, xDist)
  max = botRight(xDist)
  min = max - (xDist * 8)
  return min < number && number <= max
end

foundXDist = 0

while not contained?(input.to_i, foundXDist)
  foundXDist += 1
end

length = sideLength(foundXDist)
perimiterIndex = botRight(foundXDist) - input.to_i
perimiterIndex = perimiterIndex % (length - 1)

mid = (length - 1)/2
yDist = (mid - perimiterIndex).abs

puts(foundXDist + yDist)
