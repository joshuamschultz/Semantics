class RSSProcessing < TextResource
  # RSS extracts text form RSS feeds
  # then pulls methods from TextResource to act upon it
  
  def initialize
    super ('')
  end
  
  def self.get_entries source_uri=''
    entries = Array.news
    rss = SimpleRSS.parse(open(source_uri))
    items = rss.items
    items.each do |item|
      content = item[:content_encode] || item[:description] || ''
      entry = RSSProcessing.new
      # clean text
      # process text
      entry.source_uri = item[:link] || ''
      entry.title = item[:title] || ''
      entries << entry
    end
    
    entries
  
end
