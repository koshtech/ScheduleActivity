class Product < ActiveRecord::Base
  attr_accessible :description, :flavor

  validates :flavor, presence: true
  validates :description, presence:true

end
