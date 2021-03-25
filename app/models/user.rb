class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :projects
  #possible problem on line 10
  has_many :projects, through: :requests
  has_many :requests
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
