class InCharge < ApplicationRecord
  belongs_to :customer_user, optional: true
end
