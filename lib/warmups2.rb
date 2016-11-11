class PageParser

  attr_reader :html_string, :queue, :outputter

  TAGS_AND_TEXT = /(<[\/!]?[\w\s="'-]+>\s*)|([^<>]*)/
  OPEN = /<\w+>/
  CLOSE = /<\/\w+>/
  TEXT = /\>\s?(.*?)\s?</

  VOID_ELEMENTS = "area, base, br, col, command, embed, hr, img, input, keygen, link, meta, param, source, track, wbr".split(', ')

  def initialize html_string
    @html_string = html_string
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

  def outputter
    depth = 0
    until @queue.empty?
      node = @queue.shift
      if open_tag?(node)
        puts "#{'  ' * depth} #{node}"
        depth += 1
      elsif close_tag?(node)
        depth -= 1
        puts "#{'  ' * depth} #{node}"
      else
        puts "#{'  ' * depth} #{node}"
      end
    end
  end

  def open_tag?(tag)
    tag[0] == "<" && tag[1] != "/"
  end

  # def text_tag?(tag)
  #   tag.match(TEXT)
  # end

  def close_tag?(tag)
    tag.match(CLOSE)
  end

end


s = "<div> div text before <p> p text </p> <div> more div text </div> div text after</div>"

test = %(<!doctype html>
<html>
  <head>
    <title>
      This is a test page
    </title>
  </head>
  <body>
    <div class="top-div">
      I'm an outer div!!!
      <div class="inner-div">
        I'm an inner div!!! I might just <em>emphasize</em> some text.
      </div>
      I am EVEN MORE TEXT for the SAME div!!!
    </div>
    <main id="main-area">
      <header class="super-header">
        <h1 class="emphasized">
          Welcome to the test doc!
        </h1>
        <h2>
          This document contains data
        </h2>
      </header>
      <ul>
        Here is the data:
        <li>Four list items</li>
        <li class="bold funky important">One unordered list</li>
        <li>One h1</li>
        <li>One h2</li>
        <li>One header</li>
        <li>One main</li>
        <li>One body</li>
        <li>One html</li>
        <li>One title</li>
        <li>One head</li>
        <li>One doctype</li>
        <li>Two divs</li>
        <li>And infinite fun!</li>
      </ul>
    </main>
  </body>
</html>
)

p = PageParser.new(test)

p p.parse

p.outputter


