require './lib/full_adder'

def binary_addition(x, y)
  # initialize output
  sum = ''

  # initialize the carry bit
  c = 0

  # handle length differences by padding the start with 0s
  if x.length > y.length
    y = y.rjust(x.length, '0')
  elsif y.length > x.length
    x = x.rjust(y.length, '0')
  end

  # move from right to left
  (x.length - 1).downto(0) do |i|
    # get the current digit for each number and convert to int
    a = x[i].to_i
    b = y[i].to_i

    # send to the full adder
    c, s = full_adder(a, b, c)

    # prepend to the sum
    sum.prepend(s.to_s)
  end

  # add on carry bit if needed
  sum.prepend(c.to_s) if c == 1

  # return the sum
  sum
end

puts binary_addition('011011', '001111') # 27 + 15
# result: 0101010 = 42
