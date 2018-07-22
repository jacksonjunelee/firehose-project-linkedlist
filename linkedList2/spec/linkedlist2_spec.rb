require 'linkedlist2'
require 'spec_helper'
require 'pry'

describe 'LinkedList Reverse With Mutation' do
  it 'should reverse list' do
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    revlist = reverse_list(node3)
    expect(revlist.value).to equal(node1.value)
    expect(revlist.next_node.value).to equal(node2.value)
    expect(revlist.next_node.next_node.value).to equal(node3.value)
    expect(revlist.next_node.next_node.next_node).to be_nil
  end

  it 'should be the same node instance' do
    node1 = LinkedListNode.new(37)
    node2 = LinkedListNode.new(99, node1)
    node3 = LinkedListNode.new(12, node2)
    revlist = reverse_list(node3)
    expect(revlist).to equal(node1);
  end
end
