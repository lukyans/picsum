class Images
  def initialize(attributes)
    @author = attributes["author"]
    @width = attributes["width"]
    @height = attributes["height"]
    @url = attributes["url"]
    @download_url = attributes["download_url"]
  end
end
