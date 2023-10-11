require './lib/half_adder'

def full_adder(x, y, c = 0)
  c1, s1 = half_adder(x, y)
  c2, s2 = half_adder(s1, c)
  [or_gate(c1, c2), s2]
end
