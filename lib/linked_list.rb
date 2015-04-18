require 'pry'

# State that needs to be tracked
# TODO the head of the list
# TODO data of each node
# TODO next node of each node (link)
class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :name, :head

  def initialize(name)
    @name = name
    @head = nil
  end

  def add_node(data)

    if head.nil?
      @head = Node.new(data)
    else
      node = Node.new(data)
      head.next_node = node
    end
  end
end


# list = LinkedList.new('my_list_name')
# p list.name
# list.add_node("I'm the first node.")
# list.add_node("I'm the second node.")
