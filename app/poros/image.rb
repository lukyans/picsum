class Image
  attr_reader :id,
              :author,
              :width,
              :height,
              :url,
              :download_url

  def initialize(attributes)
    @id = attributes["id"].to_i
    @author = attributes["author"]
    @width = attributes["width"]
    @height = attributes["height"]
    @url = attributes["url"]
    @download_url = attributes["download_url"]
  end

  def self.reject_author(img)
    first_name = img.author.split(" ").first
    first_letter = first_name.split("").first
    img unless first_letter == "S" || first_letter == "K"
  end

  def self.is_prime(num)
    (2..(num - 1)).each do |n|
      return false if num % n == 0
    end
    true
  end

  def self.non_prime(num)
    (2..(num - 1)).each do |n|
      return true if num % n == 0
    end
    false
  end
end
