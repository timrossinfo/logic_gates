# Primary operations

def and_gate(x, y)
  (x == 1 && y == 1) ? 1 : 0
end

def or_gate(x, y)
  (x == 1 || y == 1) ? 1 : 0
end

def not_gate(x, _ = nil)
  x == 1 ? 0 : 1
end

# Secondary operations

def xor_gate(x, y)
  # (x || y) && !(x && y)
  and_gate(or_gate(x, y), not_gate(and_gate(x, y)))
end

def imp_gate(x, y)
  # !x || y
  or_gate(not_gate(x), y)
end

def equiv_gate(x, y)
  # (x && y) || (!x && !y)
  or_gate(and_gate(x, y), and_gate(not_gate(x), not_gate(y)))
end

# Complimentary operations

def identity_gate(x, _ = nil)
  not_gate(not_gate(x))
end

def nand_gate(x, y)
  not_gate(and_gate(x, y))
end

def nor_gate(x, y)
  not_gate(or_gate(x, y))
end

def xnor_gate(x, y)
  not_gate(xor_gate(x, y))
end

def nequiv_gate(x, y)
  not_gate(equiv_gate(x, y))
end

def nimp_gate(x, y)
  not_gate(imp_gate(x, y))
end
