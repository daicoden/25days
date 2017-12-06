
#input = STDIN.gets.chomp
input = File.read("input.txt").chomp

puts("Input: #{input}")

sum = 0
input.split("\n").each do |line|
  min = 0
  max = 0
  values = [""]
  line.chars.each do |c|
    if c == " " && !values[-1].empty?
      values << ""
    end
    if c != " "
      values[-1] += c
    end
  end
  values = values.map { |c| c.to_i }
  sum += values.max - values.min
end

puts(sum)
