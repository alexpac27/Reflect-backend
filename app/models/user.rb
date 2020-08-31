class User < ApplicationRecord
    has_many :favorites
    has_many :articles, through: :favorites
    has_many :logs
    has_many :moods, through: :logs

    validates :email, uniqueness: { case_sensitive: false }
    has_secure_password
end
