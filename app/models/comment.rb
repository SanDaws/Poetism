class Comment < ApplicationRecord
  belongs_to :Publication
  belongs_to :Writer
end
