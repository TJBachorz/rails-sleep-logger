class User < ApplicationRecord
    has_many :sleeplogs
    :has_secure_password
end
