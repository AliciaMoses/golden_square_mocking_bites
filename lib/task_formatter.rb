class TaskFormatter
    def initialize(task) # task is an instance of Task
      @task = task
    end
  
    def format
      @task.complete? ? "[x] #{@task.title}" : "[ ] #{@task.title}"
    end
  end