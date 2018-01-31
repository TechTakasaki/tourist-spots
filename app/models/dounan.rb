class Dounan < ApplicationRecord
  #before_save :geocode_full_address

  #def geocode_full_address
    #coords = Geocoder.coordinates(
      #self.prefecture + self.city + self.address # 県名 + 市町村名 + 丁目番地
    #)
    #self.latitude = coords[0]
    #self.longitude = coords[1]
  #end
  
  has_many :dounan_reviews
  
  validates :title, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 300 }
  validates :image_url, presence: true
  validates :access, presence: true
end