class Node

  attr_accessor :children, :type, :attributes

  TYPE = /^(<)(\w+)\b/
  ATTRIBUTES = /(\s\w+)="(\w+[^"]*)/

  def initialize(tag, depth)
    @tag = tag
    @parent = nil
    @children = []
    @attributes = {}
    @depth = depth
    run
  end

  def run
    add_type
    add_attributes
  end

  def add_type
    if @tag.match(TYPE)
      @type = @tag.match(TYPE)[2]
    end
  end

  def add_attributes
    scanned = @tag.scan(ATTRIBUTES)
    scanned.each do |item|
      @attributes[item[0].strip.to_sym] = item[1].split
    end
  end





end

