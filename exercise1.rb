class Task

    def initialize
      @description = nil
      @due_date = nil
    end


    def task
      puts " I am here in reader !"
      return @description


    end

    def task= (new_task)
      puts " Writer seems work !!"
      return @description = new_task
    end


end #class Task definition ends

system('clear')

inst_1 = Task.new
inst_2 = Task.new
inst_3 = Task.new



# puts "#{inst_1} : #{inst_2} : #{inst_3}"
p inst_1
p inst_1.task

inst_1.task= 'walking'
p inst_1.task 

# inst_1.task = ('walking')
# p inst_1.description
