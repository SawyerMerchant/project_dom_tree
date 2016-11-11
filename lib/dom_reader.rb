class DOMReader
  
  attr_reader :loaded_html

  def initialize html_file
    load_in(html_file)    
  end

  def load_in(file)
    path = "#{Dir.pwd}#{file}"
    html_text = File.open(path, 'r')
    @loaded_html = html_text.read.scan(/.*/)
    @loaded_html.reject! { |item| item.empty? }
    @loaded_html.map! { |item| item.strip }
    html_text.close
  end


end

puts a = DOMReader.new("/test.html")
p a.loaded_html