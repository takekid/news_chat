class Comment < ApplicationRecord
  belongs_to :datum
  belongs_to :user
end
