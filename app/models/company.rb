class Company < ApplicationRecord
    has_one :policy, dependent: :destroy
    has_one :acquisition_development_maintenance, dependent: :destroy
    has_one :telecommunication_security, dependent: :destroy
end
