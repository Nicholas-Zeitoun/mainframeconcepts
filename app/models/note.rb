class Note < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  has_rich_text :content

  def markdown_content
    Kramdown::Document.new(content).to_html.html_safe
  end
end
