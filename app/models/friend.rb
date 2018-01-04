class Friend < ApplicationRecord
  has_one :associate
  has_one :user, through: :associate
end
