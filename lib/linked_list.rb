# State that needs to be tracked
# TODO the head of the list
# TODO data of each node
# TODO next node of each node (link)
class Node
  attr_accessor :data, :next_node

  def initialize
    @data = nil
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
      @head = Node.new
      @head.data = data
    else

    end

  end

end



# list = LinkedList.new()
# list.name
