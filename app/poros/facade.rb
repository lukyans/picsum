class Facade
  def self.images
    json = PicsumService.image_attributes

    images = json.map do |image_data|
      Image.new(image_data)
    end

    sort_images(filter_author(images))
  end

  def self.filter_author(images)
    array = []
    images.each { |img| array << img unless Image.reject_author(img).nil? }
    array
  end

  def self.sort_images(images)
    array = []
    images.each do |img|
      array << img if Image.is_prime(img.id)
    end

    array2 = []
    images.each do |img|
      array2 << img if Image.non_prime(img.id)
    end

    array + array2.sort! { |a, b| a.id <=> b.id}
  end
end
