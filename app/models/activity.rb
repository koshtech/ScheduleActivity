class Activity < ActiveRecord::Base
  has_many :products, order: 'desc'
  attr_accessible :clientAddress, :clientEmail, :clientName, :clientTelephone, :product, :date_time, :productQuantity
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 
  validates :product, presence: {:message => "Devera ser inserido um sabor"}
  validates :productQuantity, presence: {:message => "A reserva devera possuir uma quantidade"} 
  validates :date_time, presence: {:message => "A reserva devera possuir uma data e hora"}, uniqueness: {:message => "Ja existe uma reserva para esta data e hora"}
  validates :clientName, presence: {:message => "O cliente devera possuir um nome"} 
  validates :clientAddress, presence: {:message => "O cliente devera possuir um endereco"} 
  validates :clientTelephone, presence: {:message => "O cliente devera possuir um telefone"}, length: {maximum: 8, minimum: 8, :message => "O telefone devera possuir 8 digitos"} 
  validates :clientEmail, presence: {:message => "O cliente devera possuir um email"}, format: {with: VALID_EMAIL_REGEX, :message => "O formato do email esta incorreto"}
end
