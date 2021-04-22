class InCharge < ApplicationRecord
  belongs_to :customer_users, optional: true
end
