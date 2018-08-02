# write your code here

def translate(sentence) # Splits sentences into words and reassembles, leaves individual words alone
  if sentence.chars.include?(' ')
    words = sentence.split(' ')
    new_sentence = ''
    counter = 0
    words.each do |word|
      if counter > 0
        new_sentence += ' '
      end
      new_sentence += piggy(word)
      counter += 1
    end
    return new_sentence
  else
    return piggy(sentence)
  end
end


def piggy(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
  if vowels.include?(word[0]) # first letter is a vowel
    return word + 'ay'

  elsif word.length > 3 && # consonant first, then 'qu'
    !vowels.include?(word[0]) &&
    word[1] == 'q' &&
    word[2] == 'u'
    !vowels.include?(word[0]) &&
    !vowels.include?(word[1]) &&
    !vowels.include?(word[2])
    word_array = word.chars
    new_word = ''
    counter = 0
    word_array.each do |char|
      if counter > 2
        new_word += char
      end
      counter += 1
    end
    new_word += word_array[0]
    new_word += word_array[1]
    new_word += word_array[2]
    new_word += 'ay'
  
  elsif word.include?('qu') # has 'qu' in word
    !vowels.include?(word[0]) &&
    !vowels.include?(word[1])
    word_array = word.chars
    new_word = ''
    counter = 0
    word_array.each do |char|
      if counter > 1
        new_word += char
      end
      counter += 1
    end
    new_word += word_array[0]
    new_word += word_array[1]
    new_word += 'ay'

  elsif word.include?('sch') # has 'sch' in word
    word_array = word.chars
    new_word = ''
    counter = 0
    word_array.each do |char|
      if counter > 2
        new_word += char
      end
      counter += 1
    end
    new_word += word_array[0]
    new_word += word_array[1]
    new_word += word_array[2]
    new_word += 'ay'


  elsif word.length > 2 && # 3 consonants
    !vowels.include?(word[0]) &&
    !vowels.include?(word[1]) &&
    !vowels.include?(word[2])
    word_array = word.chars
    new_word = ''
    counter = 0
    word_array.each do |char|
      if counter > 2
        new_word += char
      end
      counter += 1
    end
    new_word += word_array[0]
    new_word += word_array[1]
    new_word += word_array[2]
    new_word += 'ay'

  elsif word.length > 1 && # 2 consonants
    !vowels.include?(word[0]) &&
    !vowels.include?(word[1])
    word_array = word.chars
    new_word = ''
    counter = 0
    word_array.each do |char|
      if counter > 1
        new_word += char
      end
      counter += 1
    end
    new_word += word_array[0]
    new_word += word_array[1]
    new_word += 'ay'
  
  elsif !vowels.include?(word[0]) # 1 consonant
    word_array = word.chars
    new_word = ''
    counter = 0
    word_array.each do |char|
      if counter != 0
        new_word += char
      end
      counter += 1
    end
    new_word += word_array[0]
    new_word += 'ay'
  end
  return new_word
end
