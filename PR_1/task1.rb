# 1. Упорядкувати масив за зростанням
def sort_array(arr)
    arr.sort
  end
  arr1 = [3, 1, 4, 1, 5, 9, 2, 6, 5]
  puts "1. Упорядкований масив: #{sort_array(arr1)}"
  
  # 2. Перетворити масив, вставляючи нуль після кожного додатного елемента
  def insert_zero_after_positive(arr)
    result = []
    arr.each { |num| result.push(num, 0) if num > 0 }
    result.flatten
  end
  arr2 = [1, -2, 3, -4, 5]
  puts "2. Масив з нулями після додатних елементів: #{insert_zero_after_positive(arr2)}"
  
  # 3. Знайти індекс першого екстремального елемента
  def find_extreme_index(arr)
    min_index = arr.index(arr.min)
    max_index = arr.index(arr.max)
    [min_index, max_index].min
  end
  arr3 = [5, 2, 8, 1, 7]
  puts "3. Індекс першого екстремального елемента: #{find_extreme_index(arr3)}"
  
  # 4. Вивести індекси масиву в тому порядку, в якому відповідні їм елементи утворюють зростаючу послідовність
  def indices_of_increasing(arr)
    indices = []
    arr.each_with_index { |value, index| indices << index if index == 0 || arr[index] > arr[index - 1] }
    indices
  end
  arr4 = [1, 3, 2, 4, 6]
  puts "4. Індекси зростаючої послідовності: #{indices_of_increasing(arr4)}"
  
  # 5. Знайти кількість елементів, між першим і останнім максимальним
  def count_between_max(arr)
    max_val = arr.max
    first_max_index = arr.index(max_val)
    last_max_index = arr.rindex(max_val)
    last_max_index - first_max_index - 1
  end
  arr5 = [1, 2, 3, 9, 4, 9, 5]
  puts "5. Кількість елементів між першим і останнім максимальним: #{count_between_max(arr5)}"
  
  # 6. Знайти всі непарні елементи
  def odd_elements(arr)
    arr.select { |num| num.odd? }
  end
  arr6 = [1, 2, 3, 4, 5, 6]
  puts "6. Непарні елементи: #{odd_elements(arr6)}"
  
  # 7. Знайти результат добутку 1*2*...*N
  def factorial(n)
    (1..n).reduce(:*)
  end
  n7 = 5
  puts "7. Результат добутку 1*2*...*#{n7}: #{factorial(n7)}"
  
  # 8. Підвести до квадрата від'ємні елементи і до третього степеня - додатні
  def transform_elements(arr)
    arr.map { |num| num < 0 ? num**2 : num > 0 ? num**3 : num }
  end
  arr8 = [-1, 2, -3, 0, 4]
  puts "8. Масив з трансформованими елементами: #{transform_elements(arr8)}"
  
  # 9. Перетворити масив, вставивши перед кожним від'ємним елементом нульовий елемент
  def insert_zero_before_negative(arr)
    result = []
    arr.each { |num| result.push(0, num) if num < 0 }
    result.flatten
  end
  arr9 = [1, -2, 3, -4, 5]
  puts "9. Масив з нулями перед від'ємними елементами: #{insert_zero_before_negative(arr9)}"
  
  # 10. Знайти кількість елементів, розташованих перед останнім максимальним
  def count_before_max(arr)
    max_val = arr.max
    arr[0..arr.rindex(max_val) - 1].length
  end
  arr10 = [1, 2, 3, 9, 4, 9, 5]
  puts "10. Кількість елементів перед останнім максимальним: #{count_before_max(arr10)}"
  
  # 11. Знайти результат виразу 1 - A + A*2 - A*3 + ... + ((-1)**N)*A*N
  def alternating_sum(a, n)
    (1..n).reduce(0) { |sum, i| sum + ((-1)**(i + 1)) * a * i }
  end
  a11 = 3
  n11 = 5
  puts "11. Результат виразу для A = #{a11}, N = #{n11}: #{alternating_sum(a11, n11)}"
  
  # 12. Вивести індекси елементів, менших за свого лівого сусіда
  def indices_left_smaller(arr)
    indices = []
    arr.each_with_index { |value, index| indices << index if index > 0 && value < arr[index - 1] }
    indices
  end
  arr12 = [5, 3, 8, 1, 4]
  puts "12. Індекси елементів, менших за свого лівого сусіда: #{indices_left_smaller(arr12)}"
  
  # 13. Вивести індекси елементів, які менші за свого правого сусіда
  def indices_right_smaller(arr)
    indices = []
    arr.each_with_index { |value, index| indices << index if index < arr.length - 1 && value < arr[index + 1] }
    indices
  end
  arr13 = [5, 3, 8, 1, 4]
  puts "13. Індекси елементів, менших за свого правого сусіда: #{indices_right_smaller(arr13)}"
  
  # 14. Вивести спочатку всі його непарні елементи, а потім парні
  def separate_odds_and_evens(arr)
    odds = arr.select { |num| num.odd? }
    evens = arr.select { |num| num.even? }
    odds + evens
  end
  arr14 = [1, 2, 3, 4, 5, 6]
  puts "14. Непарні елементи, потім парні: #{separate_odds_and_evens(arr14)}"
  
  # 15. Замінити всі від'ємні елементи на значення максимального
  def replace_negatives_with_max(arr)
    max_val = arr.max
    arr.map { |num| num < 0 ? max_val : num }
  end
  arr15 = [-1, 2, -3, 4, -5]
  puts "15. Масив з заміненими від'ємними елементами: #{replace_negatives_with_max(arr15)}"