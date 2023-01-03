require 'task_formatter'



RSpec.describe TaskFormatter do
    it "constructs" do
        task_one = double :task
        task_text = TaskFormatter.new(task_one)
        expect(task_text).to be  
    end
    context "if the task is complete" do
        it "returns the task title in the complete format" do 
            task_one = double :task, title: 'file docs', complete?: false
            task_text = TaskFormatter.new(task_one)
            expect(task_text.format).to eq "[ ] file docs"
        end
    end

end