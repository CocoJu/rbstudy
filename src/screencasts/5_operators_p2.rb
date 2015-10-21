puts (2 + 3) * 5

puts true && false
puts false && true
puts true && true
puts false && false

puts (1 < 2) && (3 > 2)
puts (1 > 2) && (3 > 2)

=begin
NOTE, IMPORTANT!
interpreter return right-location value, usually juniors think
that it expression returns only false or true
puts true && 1
=end

puts 1 > 2 || 3 > 2
puts false || true

=begin
NOTE, IMPORTANT!
interpreter stopped concatenation from true value and return it,
does not continue to analyze further
=end
puts false || "true between 2 false" || false
puts false || false || "it too true"

