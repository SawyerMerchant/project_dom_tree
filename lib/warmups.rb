class Tag

  attr_reader :type, :classes, :id, :name

  def initialize string
    @string = string
  end



  def type
    @string.match(/^(<)(\w+)\b/)[2]
  end

  def classes
    all_classes = @string.match(/class=\'(.*?\')/)[1][0..-2].split(" ")
    # all_classes.split(" ")
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
