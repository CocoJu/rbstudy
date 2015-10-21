# syntax sugar

def chain_string
  str = "ruby"
  str += " programming language"
  yield(str)
end

chain_string {|str|
  puts str += " brackets block"
}

chain_string do |str|
  puts str += " do-end block"
end

# what different?
# http://stackoverflow.com/questions/2122380/using-do-block-vs-brackets
# Ruby cookbook says bracket syntax has higher precedence order than do..end

1.upto 3 do |x|
  puts x
end

# 1.upto 3 { |x| puts x }
# SyntaxError: compile error

1.upto(3) { |x| puts x }
# correct