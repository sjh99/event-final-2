# == Schema Information
#
# Table name: event_listings
#
#  id                :integer          not null, primary key
#  event_name        :string
#  event_type        :string
#  event_date        :date
#  location_id       :integer
#  event_description :string
#  creator_id        :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class EventListing < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  belongs_to :location, :class_name => "City"

  validates :event_name,
            :event_type,
            :event_date,
            :location_id,
            :event_description,
            :creator_id, presence: true
end
