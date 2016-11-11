require 'warmups'

class PageParser

  attr_reader :html_string

  TAGS_AND_TEXT = /(<[\/!]?[\w\s="'-]+>\s*)|([^<>]*)/

  VOID_ELEMENTS = "area, base, br, col, command, embed, hr, img, input, keygen, link, meta, param, source, track, wbr".split(', ')

  def initialize html_string
    @dom = []
    @html_string = html_string
    @stack = []
  end







end