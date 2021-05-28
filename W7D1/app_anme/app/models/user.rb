class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'password can\'t be blank'}
    validates :session_token, presence: true, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true}
    before_validation :ensure_session_token

attr_reader :password

end 