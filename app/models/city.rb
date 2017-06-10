class City < ApplicationRecord
  has_many :event_listings, :foreign_key => "location_id", :dependent => :destroy
  has_many :users, :foreign_key => "user_city_id", :dependent => :destroy
  validates :name, presence: true
end
