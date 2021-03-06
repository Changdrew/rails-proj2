class Event < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?
    validates :address, presence: true
    has_many :comments
end
