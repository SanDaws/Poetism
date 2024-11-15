class Category < ApplicationRecord
  has_many :publications, dependent: :destroy
  before_create :normalize_name
  before_create :normalize_description
  # validations
  validates :name, presence: true,
  length: { in: 3..100 }
  validates :description, presence: true

  def normalize_name
    self.name= name.downcase if name.present?
  end
  def normalize_description
    self.description= description.downcase if description.present?
  end
end
