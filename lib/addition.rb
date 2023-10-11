require './lib/full_adder'
require 'terminal-table'

table = Terminal::Table.new(headings: ['C', 'X', 'Y']) do |t|
  t.add_row([0, 0, 0, full_adder(0, 0, 0)])
  t.add_row([0, 0, 1, full_adder(0, 1, 0)])
  t.add_row([0, 1, 0, full_adder(1, 0, 0)])
  t.add_row([0, 1, 1, full_adder(1, 1, 0)])
  t.add_row([1, 0, 0, full_adder(0, 0, 1)])
  t.add_row([1, 0, 1, full_adder(0, 1, 1)])
  t.add_row([1, 1, 0, full_adder(1, 0, 1)])
  t.add_row([1, 1, 1, full_adder(1, 1, 1)])
end
puts table
