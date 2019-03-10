class Comment < ApplicationRecord
  belongs_to :data
  belongs_to :user
end
