require_relative "words_from_string.rb"
require_relative "count_frequency.rb"

raw_text = %{The problem breaks down into two parts. First, given.}

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|word, count| count}
top_five = sorted.last(5)

for i in 0...5
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end
