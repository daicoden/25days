
#input = STDIN.gets.chomp
input = File.read("captcha.txt").chomp

puts("captcha: #{input}")

sum = 0
length = input.chars.length

input.each_char.each_with_index do |char, i|
  mid_value = i + length/2
  if mid_value >= length
    mid_value -= length
  end

  if char.to_i == input.chars[mid_value].to_i
    sum += char.to_i
  end
end

puts(sum)
