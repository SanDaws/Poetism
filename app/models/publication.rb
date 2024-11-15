class Publication < ApplicationRecord
  belongs_to :Category
  belongs_to :Writer
  has_many :comments, dependent: :destroy
  # callbacks
  # authentification to create a new publication
end
