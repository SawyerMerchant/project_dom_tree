html_string = "<div>  div text before  <p>    p text  </p>  <div>    more div text  </div>  div text after</div>"

divs = /(<[\/!]?[\w\s="'-]+>\s*)|([^<>]*)/

string_spread = html_string.scan(divs)


arr =  string_spread.flatten.compact

arr.map! { |s| s.strip}

p arr

