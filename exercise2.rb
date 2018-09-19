class Task
@@total_tasks = []
    def initialize(description)
      @@total_tasks << description
      # @description = description
      @due_date = nil
    end


    def task
      return @@total_tasks
    end

    def task= (new_task)
      @@total_tasks << new_task
    end


end #class Task definition ends

class TodoList < Task

    def initialize
      @tasks = []
    end

    def add_task(new_task)
      @tasks << new_task
      @@total_tasks << new_task.task
    end



end # class TodoList definition ends

system('clear')
inst_1 = TodoList.new

task1 = Task.new('cycling')
task2 = Task.new('reading')
task3 = Task.new('shopping')



inst_1.add_task(task1)
inst_1.add_task(task2)
inst_1.add_task(task3)

p "#{inst_1.task.length}"

puts "#{inst_1.task.class}"

p inst_1

  inst_1.task.each do |tasks|
    puts "#{tasks}"

  end

 # puts "#{inst_1.tasks.class}"
 #
 #
 # inst_1.tasks.each do |task|
 #   puts "#{task}\n"
 # end
#
# inst_1.tasks ('playing')
# p inst_1.tasks
