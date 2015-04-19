require 'pry'

# State that needs to be tracked
# the head of the list
# data of each node
# next node of each node (link)


# class Node
#   attr_accessor :data, :next_node, :location
#   def initialize
#     @data = data
#     @next_node = next_node
#     @location = LinkedList.locations
#   end
# end

class LinkedList
  attr_accessor :name, :head, :prev_node, :location

  def initialize(name)
    @name = name
    @head = nil
    @prev_node = nil
    @location = 0
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

    if @prev_node.nil? && node.next_node.nil? # pop 1 node
        self.head = nil
    else

      if @prev_node.nil? # pop 2 nodes
        @prev_node = node
        pop(node.next_node)
      else
        if node.next_node.nil?
          @prev_node.next_node = nil
        else
          @prev_node = node
          pop(node.next_node)
        end
      end
    end
  end

  def [](val, node = self.head)
    @location ||= 0

    if location == val

      @location = 0
      return node.data
    else
      @location += 1
      [val, node.next_node]
    end
  end
end



class Node
  attr_accessor :data, :next_node
  def initialize(data)
    @data = data
    @next_node = nil
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
