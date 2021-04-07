class InCharge < ApplicationRecord
  belongs_to :Customer
  has_many :in_charges, dependent: :destroy
end
