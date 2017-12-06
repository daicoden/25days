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

puts("Bottom Right: #{botRight(input.to_i)}")
puts("Side Length: #{sideLength(input.to_i)}")
puts("Contained in 3: #{contained?(input.to_i, 3)}")
