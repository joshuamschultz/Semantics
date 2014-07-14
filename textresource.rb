require 'rubyzip'
require 'simple-rss'
require 'atom' 
require 'nokigiri'


class TextResource
  attr_accessor :source_uri
  attr_accessor :plain_text
  attr_accessor :title
  attr_accessor :headings_1
  attr_accessor :headings_2
  attr_accessor :headings_3
  
end
