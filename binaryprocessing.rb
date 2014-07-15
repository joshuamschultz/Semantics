class BinaryProcessing < TextResource
  # Binary extracts readable words from noise characters
  # then pulls methods from TextResource to act upon it
  
  def initialize source_uri=''
    super(source_uri)
    file = open (source_uri)
    text = file.read
    #remove binary figures
    #remove non dictionary words
    #clean text
    #process text
end
