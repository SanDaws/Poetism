class Comment < ApplicationRecord
  belongs_to :Publication
  belongs_to :Writer

  validates :title, presence: true
  validates :publicaiton_text, presence: true
  validates :tags, presence: true
  validates :category, presence: true
end
