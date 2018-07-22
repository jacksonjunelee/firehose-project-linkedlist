class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if cycle?(list_node)
    print 'Going Infinite Cycle'
  else
    print "#{list_node.value} --> "
    if list_node.next_node.nil?
      print "nil\n"
      return
    else
      print_values(list_node.next_node)
    end
  end
end

def cycle?(list_node)
  if (list_node.nil? || list_node.next_node.nil?)
    return false
  end

  slow = list_node
  fast = list_node.next_node

  while slow != fast do
    if (fast.nil? || fast.next_node.nil?)
      return false
    end

    slow = slow.next_node
    fast = fast.next_node.next_node
  end

  return true
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

print_values(node3)
