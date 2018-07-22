require 'floyd'
require 'spec_helper'

describe 'Floyd Cycle Algorithm' do
  it 'should return false if list is nil or next node is nil' do
    node1 = LinkedListNode.new(37)
    result = cycle?(node1)
    expect(result).to be false
  end

  it 'should return true if linked list is in a cycle' do
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    node1.next_node = node3
    result = cycle?(node1)
    expect(result).to be true
  end

  it 'should return true if linked list is not in a cycle' do
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    result = cycle?(node1)
    expect(result).to be false
  end
end
