
#input = STDIN.gets.chomp
input = File.read("captcha.txt").chomp

puts("captcha: #{input}")

sum = 0

last_value = -1

input.each_char do |char|
  if char.to_i == last_value
    sum += char.to_i
  end
  last_value = char.to_i
end

if (input.chars[0].to_i == input.chars[-1].to_i)
    sum += input.chars[0].to_i
end

puts(sum)
