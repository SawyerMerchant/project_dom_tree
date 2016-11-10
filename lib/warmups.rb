class Tag

  attr_reader :type, :classes, :id, :name

  def initialize string
    @string = string
  end



  def type
    @string.match(/^(<)(\w+)\b/)[2]
  end

  def class
    @string.match(/(class=\')(.)\'/)[2]
  end

  def id
    #
  end

  def name
    #
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
