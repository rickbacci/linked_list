require './test/test_helper'


class NodeTest < MiniTest::Test

  def setup
    @node = Node.new
  end

  def test_a_node_exists
    assert @node
  end

  def test_a_node_can_hold_data
    @node.data = 'some data'
    assert_equal 'some data', @node.data
  end

  def test_new_node_points_to_nil
    assert @node.next_node.nil?
  end
end



