require 'pry_debug'
require './node'

class Tree
  attr_accessor :size
  attr_reader :head

  def initialize 
    @head = nil
    @size = 0
  end

  def add data
    return create_head data if @head.nil?
    temp = @head
    while temp != nil
      return false if data == temp.data
      create_respective_nodes data, temp
      data < temp.data ? temp = temp.left : temp = temp.right
    end
    @head = temp
  end

  def search data
    return true if !head.nil? && head.data == data
    temp = @head
    while temp != nil
      return true if data == temp.data
      if data < temp.data
        temp = temp.left
      elsif data > temp.data
        temp = temp.right
      end
    end
    false
  end

  def traverse_nodes current_node, data

  end

  def create_respective_nodes data, temp
    if data < temp.data && temp.left_nil?
      create_left_node temp, data
    elsif data > temp.data && temp.right_nil?
      create_right_node temp, data
    end
  end

  def create_left_node current_node, data
    child = Node.new data
    @size += 1
    current_node.left = child
  end

  def create_right_node current_node, data
    child = Node.new data
    @size += 1
    current_node.right = child
  end

  def create_head data
    @head = Node.new data
    @size += 1
  end

  def print
    _print @head
  end

  private 
  def _print node
    _print node.left if node.left_not_nil?
    puts node.data
    _print node.right if node.right_not_nil?
  end
end