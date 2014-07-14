class PlainTextProcessing < TextResource
  # PlainText simply reads text
  # then pulls methods from TextResource to act upon it
  
  def initialize source_uri=''
    super(source_uri) #perhaps the parenthesis and object are not needed?
    file = open(source_uri)
    @plain_text = file.read
    #clean text
  end
  
end
