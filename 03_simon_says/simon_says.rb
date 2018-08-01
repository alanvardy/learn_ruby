# write your code here

def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(words, times = 2)
  answer = words
  (times - 1).times do
    answer += ' '
    answer += words
  end
  answer
end

def start_of_word(word, number_of_letters = 1)
  word_array = word.split('')
  new_word = ''
  number_of_letters.times do
    new_word += word_array.shift
  end
  new_word
end

def first_word(sentence)
  sentence.split(' ').first
end

def titleize(sentence)
  little_words = ['and', 'the', 'over']
  word_array = sentence.split(' ')
  new_word_array = []
  position = 0
  word_array.each do |i|
    position += 1
    if little_words.include?(i) && position != 1
      new_word_array.push i
    else
      new_word_array.push i.capitalize
    end
  end
  new_word_array.join(' ')
end
