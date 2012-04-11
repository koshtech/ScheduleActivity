class Product < ActiveRecord::Base
  belongs_to :activity
  attr_accessible :description, :flavor

  validates :flavor, presence: true
  validates :description, presence:true

end
