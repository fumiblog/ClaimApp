class Estimate < ApplicationRecord
  belongs_to :in_charge
  has_many :details, dependent: :destroy
end
