require 'warmups'

class PageParser

  attr_reader :html_string

  def initialize html_string
    @data = {}
    @html_string = html_string
  end
  #

  def store
    type_value = Tag.new(html_string)
    tag = Hash.new(type:type_value)
  end


end