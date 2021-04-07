class Estimate < ApplicationRecord
  belongs_to :genre
  belongs_to :in_charge
  has_many :details, dependent: :destroy
end
