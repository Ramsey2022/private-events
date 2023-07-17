class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  validates :title, :description, :date, :time, :location, presence: true
  has_many :rsvps, foreign_key: :attended_event_id
  has_many :attendees, through: :rsvps
end
