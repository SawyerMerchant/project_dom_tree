class Node

  attr_accessor :children, :type

  TYPE = /^(<)(\w+)\b/
  ATTRIBUTES = /(\s\w+)="(\w+[^"]*)/

  def initialize(tag, depth)
    @type = type(tag)
    @parent = nil
    @children = []
    @attributes = {}
    @depth = depth
  end

  def type(tag)
    tag.match(TYPE)[2] if tag.match(TYPE)
  end



end