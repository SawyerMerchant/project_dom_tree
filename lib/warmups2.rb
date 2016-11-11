require 'warmups'

class PageParser

  attr_reader :html_string

  # TYPE = /^(<)(\w+)\b/
  # OPEN = /<\w+>/
  # CLOSE = /<\/\w+>/
  # TEXT = /\>\s?(.*?)\s?</

  VOID_ELEMENTS = "area, base, br, col, command, embed, hr, img, input, keygen, link, meta, param, source, track, wbr".split(', ')


  stack = []

  def initialize html_string
    @dom = []
    @html_string = html_string
  end

  def craw_text
    scan(OPEN || CLOSE || TEXT)
  end





end