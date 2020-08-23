class User < ApplicationRecord
    has_many :blogs
    has_many :comments

    validates :email, presence: true, uniqueness: true
    has_secure_password

    
end
