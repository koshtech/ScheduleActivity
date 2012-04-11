class Product < ActiveRecord::Base
  belongs_to :activity
  attr_accessible :description, :flavor

  validates :flavor, presence: {message: "E necessario cadastrar um sabor"}, uniqueness: {message: "Sabor ja cadastrado"}
  validates :description, presence: {message: "E necessario inserir uma descricao"}

end
