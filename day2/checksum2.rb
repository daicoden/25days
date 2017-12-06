
#input = STDIN.gets.chomp
input = File.read("input.txt").chomp

puts("Input: #{input}")

sum = 0
input.split("\n").each do |line|
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

  catch(:found) do
    values.length.times do |i|
      values.length.times do |j|
        jindex = j
        if jindex >= values.length
            jindex -= values.length
        end
        if values[i] < values[jindex] && values[jindex] % values[i] == 0
          sum += values[jindex]/values[i]
          throw :found
        end
      end
    end
  end
end

puts(sum)
