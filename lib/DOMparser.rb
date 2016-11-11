class DOMparser

  def initialize
    run
  end


  def run
    puts "What file would you like to parse?"
    filepath = gets.chomp
    file = file.open(filepath)
  end



end


d = DOMparser.new

