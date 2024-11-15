class Publication < ApplicationRecord
  belongs_to :Category
  belongs_to :writer
  has_many :comments, dependent: :destroy
  # callbacks
  validates :title, presence: true
  validates :publicaiton_text, presence: true
  validates :tags, presence: true
  validates :category, presence: true

  # scopes
  scope :recent, ->(n_day) { where("created_at >=", n_day) }


  # authentification to create a new publication
end
