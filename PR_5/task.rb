require 'json'

# Зчитуємо JSON-файл
file = File.read('users.json')

# Перетворюємо JSON в Ruby-об'єкти
users = JSON.parse(file)

# Виводимо інформацію про кожного користувача
users.each do |user|
  puts "Name: #{user['name']}, Age: #{user['age']}"
end

# Обчислюємо середній вік
total_age = users.sum { |user| user['age'] }
average_age = total_age / users.length.to_f

# Виводимо середній вік
puts "Average age: #{average_age.round(2)}"
