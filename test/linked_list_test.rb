require './test/test_helper'


class LinkedListTest < MiniTest::Test

  def setup
    @name = 'test_list'
    @list = LinkedList.new(@name)
  end

  def test_an_empty_lists_head_points_to_nil
    assert @list.head.nil?
  end

  def test_an_empty_list_has_a_name
    refute @list.name.nil?
  end

  def test_that_a_lists_name_can_be_changed
    @list.name = 'cooler_test_list'
    assert_equal 'cooler_test_list', @list.name
  end


  def test_head_points_to_the_first_new_node
    @list.add_node('')
    refute @list.head.nil?
  end

  def test_a_new_node_can_be_created_with_data
    @list.add_node('Bouncing baby node')
    data = @list.head.data
    assert_equal 'Bouncing baby node', data
  end

  def test_new_nodes_link_points_to_nil
    @list.add_node("I'm the first node.")

    assert_equal nil, @list.head.next_node
  end

  def test_a_second_node_can_be_added
    @list.add_node("I'm the first node.")
    @list.add_node("I'm the second node.")
    data = @list.head.next_node.data
    assert_equal "I'm the second node.", data
  end
end
