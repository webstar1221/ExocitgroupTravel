class AdminUser < ApplicationRecord

  has_secure_password

  def self.from_omniauth(response)
    AdminUser.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
      u.username = resources[:info][:name]
      u.email = response[:info][:email]
      u.password = SecureRandom.hex(15)
    end
  end


  enum role: {
    admin: 1,
    super_admin: 2,
    customer_service: 3,
    marketing: 4,
    operations: 5
  }, _prefix: true
  # Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
