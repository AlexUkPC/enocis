module YoutubesHelper
  def embed(url)
    url.gsub("watch?v=","embed/")
  end
  def id(url)
    url.gsub("https://www.youtube.com/watch?v=","")
  end
end
