class UserSearch < ApplicationRecord
  attribute :iata_code, :string
  attribute :weather_data, :json
  
  validates :iata_code, presence: true

  belongs_to :user
  
  def weather_data=(data)
    self[:weather_data] = data.to_json
  end

  def weather_data
    JSON.parse(self[:weather_data]) if self[:weather_data].present?
  end
end
