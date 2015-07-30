require 'pry'

def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it
  fruit_list.select { |e| e == 'apple' }
end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just the apples, just like the
  # challenge above
  fruit_list.collect { |e| e == 'apple' ? e : nil  }.compact
end
