class DOMparser

  def initialize
    run
  end


  def run
    puts "What file would you like to parse?"
    filepath = gets.chomp
    file = file.open(filepath)
  end


  def build_tree
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


end


d = DOMparser.new

