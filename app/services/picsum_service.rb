class PicsumService
  def self.image_attributes
    conn = Faraday.get "https://picsum.photos/v2/list?page=2&limit=100"
    response = JSON.parse(conn.body)
  end
end
