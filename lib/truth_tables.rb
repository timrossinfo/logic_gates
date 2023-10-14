require './lib/operations'
require 'terminal-table'

def ascii(op, &fn)
  table = Terminal::Table.new(title: op) do |t|
    t.add_row([0, 0, fn.call(0, 0)])
    t.add_row([0, 1, fn.call(0, 1)])
    t.add_row([1, 0, fn.call(1, 0)])
    t.add_row([1, 1, fn.call(1, 1)])
  end
  puts table
end

puts ascii("AND", &method(:and_gate))
puts ascii("OR", &method(:or_gate))
puts ascii("NOT", &method(:not_gate))

puts ascii("XOR", &method(:xor_gate))
puts ascii("EQUIV", &method(:equiv_gate))
puts ascii("IMP", &method(:imp_gate))

puts ascii("IDENTITY", &method(:identity_gate))
puts ascii("NAND", &method(:nand_gate))
puts ascii("NOR", &method(:nor_gate))

puts ascii("XNOR", &method(:xnor_gate))
puts ascii("NEQUIV", &method(:nequiv_gate))
puts ascii("NIMP", &method(:nimp_gate))
