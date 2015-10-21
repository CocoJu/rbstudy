def yield_to_next
  10.upto(20){ |x| yield(x) }
end

yield_to_next { |x| puts x }

