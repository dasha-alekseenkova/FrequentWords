def get_frequency(string)
  result = Hash.new
  input_word = string.downcase.scan(/[a-z']+/)
  input_word.each do |word|
    if result.key? word
      result[word] += 1
    else result[word] = 1
    end
  end
  result.sort_by {|_,v| v}.reverse
end
$/ = "\n\n"
puts "Please enter your sentence:"
input = STDIN.gets.gsub("\n", ' ').squeeze(' ')
words_hash = get_frequency(input)
  puts "Your result: "
  words_hash[0..2].each do |k|
    puts "Word [#{k}]"
  end