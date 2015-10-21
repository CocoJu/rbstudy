i = 0

if i > 1
  puts  "number is greater than 1"
elsif i < 1
  # if first block (if i > 1) was performed, than this block,
  # and following block interpreter will ignored
    puts "number is less than 1"
else
  puts "number equals 1"
end

puts "----------------------------"

i = 1
if i >= 1
  puts  "number is greater or equal 1"
end

if i <= 1
  puts "number is less or equal 1"
end