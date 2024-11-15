class Publication < ApplicationRecord
  belongs_to :Category
  belongs_to :Writer
end
