class Node

  attr_accessor :children, :type, :attributes, :content, :tag, :parent, :depth, :content

  TYPE = /^(<)(\w+)\b/
  ATTRIBUTES = /(\s\w+)="(\w+[^"]*)/
  CLOSE = /<\/\w+>/
  CONTENT = /  /

  def initialize(tag, depth)
    @tag = tag
    @parent = nil
    @children = []
    @attributes = {}
    @depth = depth
    @content = []
    run
  end

  def run
    add_type
    add_attributes
  end

  def add_type
    if @tag.match(TYPE)
      @type = @tag.match(TYPE)[2]
    # text is now content for another tag
    # else
    #   @type = "text"
    #   @content = @tag
    end
  end

  def add_attributes
    scanned = @tag.scan(ATTRIBUTES)
    scanned.each do |item|
      @attributes[item[0].strip.to_sym] = item[1].split
    end
  end

  def closing?
    !!@tag.match(CLOSE)
  end


end

