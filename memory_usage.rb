
def memory_usage

  puts "Введите число"
  number = gets.to_i
  puts "Введите строку"
  string = gets.to_s.chomp
  sizenum = number.size
  sizestring = string.bytesize
  puts "В числе #{number} - #{sizenum} байт"
  puts "В строке #{string}- #{sizestring} байт"
end

memory_usage

GC.start




