class User < ApplicationRecord
    has_many :punches, class_name: 'Punch'
end
