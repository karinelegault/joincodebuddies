class Project < ApplicationRecord
  belongs_to :user
  has_many :requests
  has_many :users
end
