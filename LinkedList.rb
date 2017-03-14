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


end