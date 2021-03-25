class Request < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :users, through: :requests
end
