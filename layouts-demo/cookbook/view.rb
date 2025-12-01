class View
  def ask_user_for_title
    puts "What do you want to do?"
    gets.chomp
  end

  def list_tasks(task)
    task.each_with_index do |task, index|
      x = task.completed? ? "X" : " "
      puts "#{index +1} - [#{x}] - #{task.title}"
    end
  end

  def ask_for_task_index
    puts "What is the index of the completed task?"
    gets.chomp.to_i - 1
  end
end
