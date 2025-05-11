def pig_latin(sentence)
    # Розбиваємо речення на слова
    words = sentence.split(' ')
    
    # Перетворюємо кожне слово в свинячу латиницю
    pig_latin_words = words.map do |word|
      # Якщо слово має розділові знаки на кінці
      if word.match(/[[:punct:]]$/)
        # Розділяємо слово і розділовий знак
        word_with_punctuation = word.sub(/[[:punct:]]$/, '')
        punctuation = word[-1]
        # Перетворюємо слово без розділового знаку
        word_with_punctuation[1..-1] + word_with_punctuation[0] + 'ay' + punctuation
      else
        word[1..-1] + word[0] + 'ay'
      end
    end
    
    # Об'єднуємо слова назад у речення
    pig_latin_words.join(' ')
  end
  
  # Тестування
  puts pig_latin("Hello world") # Виведе "Ellohay orldway"
  puts pig_latin("I love Ruby programming!") # Виведе "Iay ovelay Ubyray rogrammingpay!"  