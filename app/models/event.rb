class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', :foreign_key => 'creator_id'
  validates :title, :description, :date, :time, :location, presence: true
  has_many :rsvps, foreign_key: :attended_event_id
  has_many :attendees, through: :rsvps

  scope :past, -> { where('date < ?', Date.today) }
  scope :future, -> { where('date > ?', Date.today) }
end
