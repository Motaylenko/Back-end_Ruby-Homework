def most_frequent_elements(arr)
    # Створюємо хеш для підрахунку частоти елементів
    frequency = Hash.new(0)
    
    # Підраховуємо частоту кожного елемента в масиві
    arr.each { |num| frequency[num] += 1 }
    
    # Знаходимо найбільшу частоту
    max_frequency = frequency.values.max
    
    # Збираємо всі елементи, які мають найбільшу частоту
    most_frequent = frequency.select { |key, value| value == max_frequency }.keys
    
    # Виводимо результат
    most_frequent
  end
  
  # Тестування
  puts most_frequent_elements([1, 3, 1, 3, 2, 1]) # Виведе [1]
  puts most_frequent_elements([4, 4, 5, 6, 6, 5]) # Виведе [4, 5, 6]  