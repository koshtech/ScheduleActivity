class Activity < ActiveRecord::Base
  attr_accessible :clientAddress, :clientEmail, :clientName, :clientTelephone, :date, :product, :time
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :clientAddress, presence: true
  validates :clientEmail, presence: true, format: {with: VALID_EMAIL_REGEX}
  validates :clientName, presence: true
  validates :clientTelephone, presence: true 
  validates :date, presence: true
  validates :product, presence: true
  validates :time, presence: true
end
