# Створюємо масив для збереження задач
tasks = []

# Функція для додавання задачі
def add_task(tasks)
  print "Enter new task: "
  task = gets.chomp
  tasks << task
  puts "Task added!"
end

# Функція для показу всіх задач
def show_tasks(tasks)
  if tasks.empty?
    puts "No tasks available."
  else
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

# Функція для видалення задачі за номером
def delete_task(tasks)
  print "Enter the task number to delete: "
  task_number = gets.chomp.to_i

  if task_number.between?(1, tasks.length)
    tasks.delete_at(task_number - 1)
    puts "Task deleted!"
  else
    puts "Invalid task number."
  end
end

# Основний цикл меню
loop do
  puts "\n1. Add Task"
  puts "2. Show Tasks"
  puts "3. Delete Task"
  puts "4. Exit"
  print "Choose an option: "

  option = gets.chomp.to_i

  case option
  when 1
    add_task(tasks)
  when 2
    show_tasks(tasks)
  when 3
    delete_task(tasks)
  when 4
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Please try again."
  end
end
