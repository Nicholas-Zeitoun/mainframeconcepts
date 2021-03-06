class Concept < ApplicationRecord
  has_many :topics, dependent: :delete_all
  has_many :resources, as: :resourcable
  has_many :acronyms, through: :topics
end
