class XHTMLProcessing < TextResource
  # XHTML extracts text form DOM elements
  # then pulls methods from TextResource to act upon it
  
  def initialize source_uri=''
    super(source_uri) #perhaps the parenthesis and object are not needed?
    doc = Nokogiri::HTML(open(source_uri))
    #clean text
    @headings_1 = doc.xpath('//h1').collect {|h| h.inner_text.strip}
    @headings_2 = doc.xpath('//h2').collect {|h| h.inner_text.strip}
    @headings_3 = doc.xpath('//h3').collect {|h| h.inner_text.strip}
    #process text
  end
  
end