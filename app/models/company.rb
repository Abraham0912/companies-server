class Company < ApplicationRecord
    has_one :policy, dependent: :destroy
end
