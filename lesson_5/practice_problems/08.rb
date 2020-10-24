# Using the each method, write some code to output all of the vowels from the
# strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}\

vowels = ''

hsh.each_value do  |words_array|
  words_array.each do |word|
    word.each_char do |char|
      case char
      when 'a' || 'A'
        vowels << 'a'
      when 'e' || 'E'
        vowels << 'e'
      when 'i' || 'I'
        vowels << 'i'
      when 'o' || 'O'
        vowels << 'o'
      when 'u' || 'U'
        vowels << 'u'
      end
    end
  end
end

p vowels
