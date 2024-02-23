require 'rspec'
require_relative 'todo_list'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo_list.add("Take the dog to the vet")
      expect(todo_list.todos).to include("Take the dog to the vet")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list = TodoList.new
      todo_list.add("Take the dog to the vet")
      todo_list.remove("Take the dog to the vet")
      expect(todo_list.todos).not_to include("Take the dog to the vet")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list = TodoList.new
      todo_list.add("Take the dog to the vet")
      todo_list.add("Walk the dog")
      expect(todo_list.todos).to eq(["Take the dog to the vet", "Walk the dog"])
    end
  end
end
