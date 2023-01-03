require "task"

RSpec.describe Task do
  it "constructs" do
    task = Task.new("Walk the dog")
    expect(task.title).to eq "Walk the dog"
  end

  it "can be marked as complete" do
    task = Task.new("Walk the dog")
    task.mark_complete
    expect(task.complete?).to eq true
  end
end
