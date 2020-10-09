class HomeController < ApplicationController
  def index
    conn = Faraday.get "https://picsum.photos/v2/list?page=2&limit=100"

    response = JSON.parse(conn.body)

    @images = response
  #   [{"id"=>"117",
  # "author"=>"Daniel Ebersole",
  # "width"=>1544,
  # "height"=>1024,
  # "url"=>"https://unsplash.com/photos/Q14J2k8VE3U",
  # "download_url"=>"https://picsum.photos/id/117/1544/1024"},
  end
end
