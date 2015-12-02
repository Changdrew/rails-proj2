class Event < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
    validate :address, presence: true
    has_many :comments
end
