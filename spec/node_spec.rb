require 'spec_helper'
require_relative '../node'

describe 'Node' do
  describe '#new' do
    it 'creates a new Node object with data' do
      node = Node.new 10
      expect(node.data).to eq 10
    end

    it 'expects a new node to have no children' do
      node = Node.new 10
      expect(node.no_children?).to be_truthy
    end
  end
end