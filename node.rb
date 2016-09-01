class Node
  attr_accessor :data, :left, :right
  def initialize data
    @data = data
    @left = nil
    @right = nil
  end

  def no_children?
    @left.nil? && @right.nil?
  end

  def right_nil?
    @right == nil
  end

  def right_not_nil?
    @right != nil
  end

  def left_nil?
    @left == nil
  end

  def left_not_nil?
    @left != nil
  end
end