class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :login, :enabled, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates :name,                  presence: {message: "E necessario preencher o nome"}
  validates :login,                 presence: {message: "E necessario preencher o login"}
  validates :email,                 presence: {message: "E necessario preenher o email"}
  validates :password,              presence: {message: "E necessario utilizar uma senha"}, length: {maximum: 10, minimum: 5, message: "A senha devera conter entre 5 e 10 caracteres"}
  validates :password_confirmation, presence: {message: "E necessario confirmar sua senha"}
end
