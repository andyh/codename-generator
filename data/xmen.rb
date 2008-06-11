require 'cgi'

require "rubygems"
require "hpricot"
require "open-uri"

xmen = Array.new

doc         = Hpricot(open("http://en.wikipedia.org/wiki/List_of_X-Men_teams"))

(doc/"table.wikitable>tr>td:first-child>a").each do |i|
  xmen << i.inner_html
end

File.open("xmen.txt","w") {|f|
  f.puts xmen.join("\n")
}