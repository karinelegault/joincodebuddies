class Message < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :chatroom
end
