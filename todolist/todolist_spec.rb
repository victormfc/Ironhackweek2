require_relative './todolist.rb'
require 'pry'
require 'rspec'
RSpec.describe "Tasks test" do
    describe do
        let(:task1) { Task.new("Walk the dog") }

        it "return the task completed or not" do
            expect(task1.completed?).to eq(false)
        end

        it "change the task complete to true" do
            expect(task1.complete!).to eq(true)
        end

        it "takes a completed task and makes it's status false" do
            expect(task1.make_incomplete!).to eq(false)
        end

        it "update the task's text" do
            task2 = Task.new("Walk the milk")
            expect(task2.update_content!("Walk the dog")).to eq(task1.content)
        end
    end
end
    RSpec.describe do
        let(:todolist) { TodoList.new }
        
        it "go through an array and find a task by id" do
            todolist.add_task(Task.new("324exi"))
            expect(todolist.find_task_by_id(6)).to be_truthy
        end  
        it "add tasks to our to do list" do
            todolist.add_task Task.new ("Walk the dog")
            expect(todolist.tasks.length).to eq(1)
        end

        it "delete if id equals task" do
            todolist.delete_task(1)
            expect(todolist.tasks.length).to eq(0)
        end
        
    end    
