class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :avatar_photo
  has_many :projects, dependent: :destroy
  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills
  #possible problem on line 10
  has_many :projects, through: :requests
  has_many :requests, dependent: :destroy
  has_many :chatroom, dependent: :destroy
  has_many :chatroom, through: :requests, dependent: :destroy
  has_many :messages, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  include PgSearch::Model
  pg_search_scope :search_by_username,
    against: [ :email ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
