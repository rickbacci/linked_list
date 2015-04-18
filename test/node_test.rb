require './test/test_helper'


class NodeTest < MiniTest::Test

  def setup
    @node = Node.new('node_test')
  end

  def test_a_node_exists
    assert @node
  end

  def test_a_node_can_hold_data
    assert_equal 'node_test', @node.data
  end

  def test_new_node_points_to_nil
    assert @node.next_node.nil?
  end
end



