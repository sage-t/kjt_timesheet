class Punch < ApplicationRecord
    belongs_to :user, class_name: 'User'
    belongs_to :pay_period, class_name: 'PayPeriod'
end
