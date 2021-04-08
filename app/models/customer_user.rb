class CustomerUser < ApplicationRecord
  belongs_to :customer
  has_many :in_charges, dependent: :destroy
end
