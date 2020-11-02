class Topic < ApplicationRecord
  validates :title, presence: true
  belongs_to :concept
end
