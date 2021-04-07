class Genre < ApplicationRecord
  has_many :estimates, dependent: :destroy
end
