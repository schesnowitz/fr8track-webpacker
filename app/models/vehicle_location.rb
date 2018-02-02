class VehicleLocation < ApplicationRecord
  validates :latitude, uniqueness: {scope: :longitude}
  belongs_to :vehicle
end


