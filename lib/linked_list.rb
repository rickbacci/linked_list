require 'pry'

# State that needs to be tracked
# the head of the list
# data of each node
# next node of each node (link)


Node = Struct.new(:data, :next_node)


class LinkedList
  attr_accessor :name, :head, :prev_node

  def initialize(name)
    @name = name
    @head = nil
    #@count = 0
    @prev_node = nil
  end

  def add_node(data)
    if head.nil?
      @head = Node.new(data)
      return data
    end

    check_next_node(@head, data)
  end

  def check_next_node(node, data)

    if node.next_node.nil?
      node.next_node = Node.new(data)
    else
      check_next_node(node.next_node, data)
    end
    return data
  end

  def count(node = self.head, total = 0)
    return 0 if node.nil?
    total += 1
    return total if node.next_node.nil?

    count(node.next_node, total)
  end

  def last(node = self.head)
    return node.data if node.next_node.nil?

    last(node.next_node)
  end

  def pop(node = self.head)
     if @prev_node.nil?
       @prev_node = node

       if node.next_node == nil # for 1
         self.head = nil
       else
         self.head.next_node = nil if self.head.next_node.next_node.nil? # for 2
         pop(self.head.next_node)
       end

     else
       #binding.pry
       #self.head.next_node = nil if self.head.next_node.next_node.nil?
       #pop(self.head.next_node)
     end
  end
end

#list = LinkedList.new('my_list_name')
#list.add_node("I'm the first node.")
#binding.pry

#list.pop
# list.add_node("I'm the second node.")
# list.add_node("I'm the third node.")
# list.add_node("I'm the 4th node.")
# list.add_node("I'm the 5th node.")
# puts
#  p list.name
# binding.pry

#p list.count

