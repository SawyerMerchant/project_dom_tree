class PageParser

  attr_reader :html_string, :queue

  TAGS_AND_TEXT = /(<[\/!]?[\w\s="'-]+>\s*)|([^<>]*)/

  VOID_ELEMENTS = "area, base, br, col, command, embed, hr, img, input, keygen, link, meta, param, source, track, wbr".split(', ')

  def initialize html_string
    @dom = []
    @html_string = html_string
    @stack = []
    @queue = parse

  end

  #convert html_string to array
  def parse
    #use regex to split
    arr = @html_string.scan(TAGS_AND_TEXT).flatten

    #remove nil values and return
    arr.compact!

    #remove white spaces
    arr.map! { |s| s.strip}
  end


end


s = "<div> div text before <p> p text </p> <div> more div text </div> div text after</div>"

p = PageParser.new(s)

p.parse