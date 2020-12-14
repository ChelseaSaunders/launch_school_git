require 'pry'

def joinor(num_ary, punctuation = ', ', conjunction_word = 'or')
  choices = ''

  if num_ary.length == 2
    choices = num_ary.join(' ' + conjunction_word)
  else
    num_ary.each_with_index do |num, index|
      if num_ary[index] == num_ary[-2]
        choices << num.to_s + punctuation + conjunction_word
      elsif num_ary[index] == num_ary[-1]
        choices << num.to_s
      else
        choices << num.to_s + punctuation
      end
    end
  end

  p choices
end


joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"