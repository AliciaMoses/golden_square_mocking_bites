class TaskList
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def all
    return @tasks
  end

  def all_complete?
    return false if @tasks.empty?
    return @tasks.all? do |task|
      task.complete?
    end
  end
end
