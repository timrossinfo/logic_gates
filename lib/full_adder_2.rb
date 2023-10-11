require './lib/half_adder'

def full_adder_2(x, y, c = 0)
  if c == 0
    half_adder(x, y)
  else
    [or_gate(x, y), equiv_gate(x, y)] # or XNOR
  end
end
