require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

repository = Repository.new
view = View.new
controller = Controller.new(view, repository)
router = Router.new(controller)

router.run
# task1 = Task.new("walk the dog")
# repository.add(task1) - nao precisa mais porque esta passando repository no controller

# controller.add_task
# controller.add_task
# controller.list_tasks
# controller.mark_task_as_complete
# controller.list_tasks
# p repository

# 1. Create Task class (model)
# 2. Store 'title' and 'completed' inside

# 3. Create Repository - holds instance of task model

# 4. Identify user actions (add, list etc)
# 5. Implemented Controller for these actions

# 6. Create View to do puts and gets

# 7. Create Router to send user to where they wanna go
