class Project < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :users
  has_one :chatroom
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
