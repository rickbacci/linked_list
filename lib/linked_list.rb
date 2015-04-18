require 'pry'

# State that needs to be tracked
# the head of the list
# data of each node
# next node of each node (link)


Node = Struct.new(:data, :next_node)


class LinkedList
  attr_accessor :name, :head

  def initialize(name)
    @name = name
    @head = nil
    @count = 0
  end

  def add_node(data)
    if @head.nil?
      @head = Node.new(data)
      return data
    end

    check_next_node(@head, data)
  end

  def check_next_node(node, data)
    if node.next_node.nil?
      node.next_node = Node.new(data)
    else
      node = node.next_node

      check_next_node(node, data)
    end
    return data
  end

  def count
    return 0 if self.head.nil?

    @count += 1
    return @count if self.head.next_node.nil?
    @head = head.next_node

    count
  end
end

 # list = LinkedList.new('my_list_name')
 # list.add_node("I'm the first node.")
 # list.add_node("I'm the second node.")
# list.add_node("I'm the third node.")
# list.add_node("I'm the 4th node.")
# list.add_node("I'm the 5th node.")
# puts
#  p list.name
#binding.pry
#
# p list.count
#
