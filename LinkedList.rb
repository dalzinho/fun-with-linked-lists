class LinkedList

  attr_reader :length, :head

  def initialize(head_value)
    @length = 0
    @head = Node.new(head_value)
    @length += 1
  end

  def getHead
    return @head.value
  end

  def add(value)
    oldHead = @head
    @head = Node.new(value)
    @head.set_next_node(oldHead)
    @length += 1
  end

  def getIndex(index)
    counter = 0
    requested_node = @head
    until counter == index
      requested_node = requested_node.get_next
      counter += 1
    end   
    return requested_node   
  end

  def delete_at(index)
    element_to_delete = getIndex(index)
    getIndex(index - 1).set_next_node(element_to_delete.get_next)
    @length -= 1
  end

  def insert_at(index, value)
    new_node = Node.new(value)
    old_node = getIndex(index - 1)
    new_node.set_next_node(old_node.get_next)
    old_node.set_next_node(new_node)
    @length += 1
  end

end