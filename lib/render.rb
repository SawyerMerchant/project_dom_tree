require_relative 'DOMparser'

class Render

  def self.raw_tree(tree)
    p tree
  end

  def self.print_html(tree)
    stack = []
    until tree.empty?

      current_tag = tree.shift
      if DOMparser.open_tag?(current_tag.tag)
        puts "#{'  ' * depth} #{current_tag.tag}"
        # depth += 1
      elsif close_tag?(current_tag.tag)
        # depth -= 1
        puts "#{'  ' * current_tag.depth} #{current_tag.tag}"
      else
        puts "#{'  ' * depth} #{current_tag.content}"
      end
    end
  end


end



arr = DOMparser.load("test.html")
tree = DOMparser.build_tree(arr)
# Render.raw_tree(tree)
Render.print_html(tree)