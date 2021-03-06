class User < ApplicationRecord
    has_secure_password

    has_many :comments, dependent: :delete_all
    has_many :viewings, dependent: :delete_all
    has_many :shows, through: :viewings

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true

end
