class Acronym < ApplicationRecord
  has_rich_text :content
  belongs_to :topic, class_name: "Topic"
end
