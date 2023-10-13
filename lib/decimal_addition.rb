require './lib/binary_addition'

def to_decimal(str)
  decimal = 0
  str.reverse.each_char.with_index do |bit, index|
    decimal += bit.to_i * (2 ** index)
  end
  decimal
end

def to_binary(decimal)
  return '0' if decimal == 0

  binary = ''
  while decimal > 0
    binary.prepend(decimal % 2 == 0 ? '0' : '1')
    decimal /= 2
  end

  binary
end

def add_decimal(x, y)
  to_decimal(add_binary(to_binary(x), to_binary(y)))
end

# puts add_decimal(27, 15) # 27 + 15 = 42
