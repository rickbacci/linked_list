require './test/test_helper'


class LinkedListTest < MiniTest::Test

  def setup
    @name = 'test_list'
    @list = LinkedList.new(@name)
    @data = ''

    @test1 = @list.add_node("I'm the first node.")
    @test2 = @list.add_node("I'm the second node.")
    @test3 = @list.add_node("I'm the third node.")
    @test4 = @list.add_node("I'm the fourth node.")


  end

  def test_an_empty_lists_head_points_to_nil
    empty_list = LinkedList.new(@name)
    assert empty_list.head.nil?
  end

  def test_list_cannot_have_nil_name
    refute @list.name.nil?
  end

  def test_that_a_lists_name_can_be_changed
    @list.name = 'cooler_test_list'
    assert_equal 'cooler_test_list', @list.name
  end


  def test_head_points_to_the_first_new_node
    empty_list = LinkedList.new(@name)
    empty_list.add_node('')
    refute empty_list.head.nil?
  end

  def test_a_new_node_can_be_created_with_data
    empty_list = LinkedList.new(@name)

    empty_list.add_node('Bouncing baby node')
    @data = empty_list.head.data
    assert_equal 'Bouncing baby node', @data
  end

  def test_new_nodes_link_points_to_nil
    empty_list = LinkedList.new(@name)
    empty_list.add_node("I'm the first node.")

    assert_equal nil, empty_list.head.next_node
  end

  def test_a_second_node_can_be_added
    @list.add_node("I'm the first node.")
    @list.add_node("I'm the second node.")
    @data = @list.head.next_node.data
    assert_equal "I'm the second node.", @data
  end

  def test_that_multiple_nodes_can_be_added

    assert_equal "I'm the first node.", @test1
    assert_equal "I'm the second node.", @test2
    assert_equal "I'm the third node.", @test3
    assert_equal "I'm the fourth node.", @test4
  end

  def test_head_still_points_to_head

    assert_equal "I'm the first node.", @list.head.data
  end

  def test_count_one_node
    single = LinkedList.new('single')

    single.add_node('just one')
    assert_equal 1, single.count
  end

  def test_count_two_nodes
    double = LinkedList.new('double')
    double.add_node('one')
    double.add_node('two')
    assert_equal 2, double.count
  end

  def test_count_more_than_two
    assert_equal 4, @list.count
  end

  def test_count_will_return_zero_if_head_is_nil
    empty = LinkedList.new('mt')
    assert_equal 0, empty.count
  end

  def test_return_last_node_data
    assert_equal "I'm the fourth node.", @list.last
  end

  def test_a_single_node_can_be_popped

    single = LinkedList.new('single')

    single.add_node('just one')
    assert_equal 1, single.count
    single.pop
    assert_equal 0, single.count
  end


  def test_pop_last_node_from_multiple_node_list
    double = LinkedList.new('double')
    double.add_node('one')
    double.add_node('two')
    assert_equal 2, double.count
    #binding.pry
    double.pop
    assert_equal 1, double.count
  end

end
