require_relative 'node'
require 'yaml'
require 'pry'
require 'pry-byebug'

class DOMparser


  DOCTYPE = /<!doctype.*?>/
  TAGS_AND_TEXT = /(<[\/!]?[\w\s="'-]+>\s*)|([^<>]*)/
  CLOSE = /<\/\w+>/

  def self.load(file_path)
    html_string = File.read(file_path)
    DOMparser.parse_string(html_string)
  end

  def self.parse_string(html_string)
    #use regex to split
    arr = html_string.scan(TAGS_AND_TEXT).flatten

    #remove nil values and return
    arr.compact!

    #remove white spaces
    arr.map! { |s| s.strip}
  end


  def self.build_tree(arr)
    doctype = arr.shift if DOMparser.doctype?(arr)
    root = Node.new(arr.shift, 0)
    stack = [root]
    depth = 1
    # binding.pry
    until arr.empty? || stack.empty?
      tag = arr.shift
      if DOMparser.open_tag?(tag)
        new_node = Node.new(tag, depth)
        new_node.parent = stack[-1]
        stack[-1].children << new_node
        stack << new_node
        depth += 1
      elsif DOMparser.close_tag?(tag)
        depth -= 1
        stack[-1].children << Node.new(tag, depth)
        stack.pop
      else
        #binding.pry
        #stack[-1].children << Node.new(tag, depth)
        stack[-1].content << tag
      end
    end
    root
  end

  def self.doctype?(arr)
    arr[0][1] == "!"
  end

  def self.open_tag?(tag)
    tag[0] == "<" && tag[1] != "/"
  end

  def self.text_tag?(tag)
    tag.match(TEXT)
  end

  def self.close_tag?(tag)
    tag.match(CLOSE)
  end

end

# DOMparser.load("test.html")
# arr = DOMparser.load("test.html")
# p DOMparser.build_tree(arr)


