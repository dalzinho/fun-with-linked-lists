class Node

  attr_reader :value

  def initialize(node_value)
    @value = node_value
    @next_node = nil
  end

  def set_next_node(node)
    @next_node = node
  end

  def get_next
    return @next_node
  end

end