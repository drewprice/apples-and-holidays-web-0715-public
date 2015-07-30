require 'pry'

def apple_picker_with_select(fruit_list)
  fruit_list.select { |e| e == 'apple' }
end

def apple_picker_with_collect(fruit_list)
  fruit_list.collect { |e| e if e == 'apple' }.compact
end
