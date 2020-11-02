class Topic < ApplicationRecord
  validates :title, presence: true
  belongs_to :concept
  has_many :notes, dependent: :delete_all
  has_many :resources, as: :resourcable
end
