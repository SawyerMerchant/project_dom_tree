class Node

  attr_accessor :children

  def initialize(tag)
    @tag = tag
    @parent = nil
    @children = []
  end


end