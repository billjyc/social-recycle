# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :string
#  phone           :string
#  reg_time        :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ActiveRecord::Base
  has_many :items, dependent: :destroy
  before_save {self.email = email.downcase}
  validates :username, presence: true, length: {maximum: 20}


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50},
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}


  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Password(string, cost: cost)
  end
end
