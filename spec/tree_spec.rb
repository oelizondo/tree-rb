require 'spec_helper'
require_relative '../tree'

describe 'Tree' do
  describe '#new' do
    it 'creates a new tree' do
      tree = Tree.new
      expect(tree.class).to eq Tree
    end

    it 'expects the tree\'s head to be nil ' do
      tree = Tree.new
      expect(tree.head).to eq nil
    end
  end

  describe '.add' do
    it 'adds a new item to the tree' do
      tree = Tree.new
      tree.add 5
      expect(tree.size).to eq 1
    end

    it 'adds two nodes to the tree' do
      tree = Tree.new
      tree.add 5
      tree.add 3
      expect(tree.size).to eq 2
    end

    it 'adds a semi-complex amount of numbers' do
      data = [1,2,3,4,5,6,7,8,9,11,54,23,78,65,12,43,56,21,55,66,77,88,99,100]
      tree = Tree.new
      data.each do |number|
        tree.add number
      end
      expect(tree.size).to eq data.length
    end

    it 'returns false if data is already in the tree' do
      tree = Tree.new
      tree.add 5
      expect(tree.add 5).to be_falsy
    end
  end

  describe '.search' do
    it 'returns true if the data is in the tree' do
      tree = Tree.new
      tree.add 5
      expect(tree.search 5).to be_truthy
    end

    it 'return false if the data isn\'t in the tree' do
      tree = Tree.new
      tree.add 555
      tree.add 10
      tree.add 11
      tree.add 543
      expect(tree.search 5).to be_falsy
    end
  end
end