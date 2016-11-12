class DOMReader
  
  attr_reader :loaded_html

  def initialize html_file
    load_in(html_file)    
  end

  private

  def load_in(file)
    path = "#{Dir.pwd}#{file}"
    html_text = File.open(path, 'r')    
    loaded_html = html_text.read.scan(/.*/)
    @loaded_html = clean(loaded_html)
    html_text.close
  end

  def clean(first_scan)
    first_scan.reject! { |item| item.empty? }
    first_scan.map! { |item| item.strip }
  end

end

puts a = DOMReader.new("/test.html")
p a.loaded_html