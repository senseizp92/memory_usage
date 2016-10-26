if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

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




