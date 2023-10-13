require './lib/operators'

def half_adder(x, y)
  [and_gate(x, y), xor_gate(x, y)]
end
