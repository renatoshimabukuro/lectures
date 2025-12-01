require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def add_task
    # Ask user for task
    # Take user's input
    title = @view.ask_user_for_title
    # Create instance of the task from input
    task = Task.new(title)
    # Give task to the repository
    @repository.add(task)
  end

  def list_tasks
    # Ask repo for all tasks
    # Ask view to print the tasks
    tasks = @repository.all
    @view.list_tasks(tasks)
  end

  def mark_task_as_complete
    # Ask user for index of completed task
    index = @view.ask_for_task_index
    # Ask repo for task instance at index
    task = @repository.find(index)
    # Mark task instance as complete
    task.mark_task_as_complete
  end
end
