class Task
   attr_reader :content, :id

   @@current_id = 1

    def initialize content
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @created_at = Time.now
    end

    def complete!
        @completed = true
    end

    def make_incomplete!
        @completed = false
    end

    def update_content! update_cont
        @content = update_cont
    end

    def completed?
        @completed
    end
end

class TodoList 
    attr_reader :tasks

    def initialize
        @tasks = []
    end

    def add_task task
        @tasks.push task
    end

    def delete_task id
        @tasks.delete_if {|task| task.id == id}
    end

    def find_task_by_id id
        @tasks.find {|task| task.id == id } 
    end
end

# task1 = Task.new('hola')
# task2 = Task.new('jfdfdh')
# task3 = Task.new('jdsjhds')
# puts task1.id
# puts task2.id
# puts task3.id
# todo = TodoList.new
# todo.add_task task1
# todo.add_task task2
# puts todo.tasks.length
# puts "==================="
# puts todo.delete_task 1 
# puts todo.tasks.length

