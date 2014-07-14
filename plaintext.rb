class PlainText < TextResource
  # Plaintext simply reads text
  # then pulls methods from TextResource to act upon it
  
  def initialize source_uri=''
    super(source_uri) #perhaps the paranthesis and object are not needed?
    file = open(source_uri)
    @plain_text = file.read
  end
end
