class User < ApplicationRecord
    has_secure_password
    
    VALID_EMAIL_REGEX = /\A[^@\s]+@[^@\s]+\z/
    validates :name, presence: true, length: { minimum: 3, maximum: 100 }, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/ }
    validates :email, presence: true, length: { minimum: 10, maximum: 255 }, format: { with: VALID_EMAIL_REGEX, message: "must be a valid email address" }, uniqueness: { case_senitive: false }
    validates :phone_number, presence: true, length: {minimum: 10, maximum: 10}
    validates :password, presence: true, length: { minimum: 7, maximum: 255 }
end
