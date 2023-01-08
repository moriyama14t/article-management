class Article < ApplicationRecord
  # belongs_to :user

  require 'open-uri'
  require 'nokogiri'
  
  def loadInfo
    html = URI.open(url).read
    doc = Nokogiri::HTML.parse(html)
  end
end
