class IdeaLike < ApplicationRecord
  belongs_to :idea
  belongs_to :user
end
