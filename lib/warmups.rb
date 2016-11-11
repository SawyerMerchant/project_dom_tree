class Tag

  attr_reader :type, :classes, :id, :name
  attr_accessor :child

  Type = /^(<)(\w+)\b/
  Classes = /class=\'(.*?)\'/
  Id = /id=\'(.*?)\'/
  Name = /name=\'(.*?)\'/

  def initialize string
    @string = string
    @child = nil
  end

  def parse
    # regex sniffs for open tags
    # close tags
    # '= signs' - returns whats on boths sides
  end


  def type
    @string.match(Type)[2]
  end

  def classes
    all_classes = @string.match(Classes)[1].split(" ")
  end

  def id
    @string.match(Id)[1]
  end

  def name
    @string.match(Name)[1]
  end

  def child
    @child
  end


end













# tag = parse_tag("<p class='foo bar' id='baz'>")
# tag.type
# #=> "p"
# tag.classes
# #=> ["foo", "bar"]
# tag.id
# #=> "baz"
# tag.name
# #=> "fozzie"
