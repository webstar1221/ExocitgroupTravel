class AdminUser < ApplicationRecord

  def self.from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.username = auth.info.name
      user.email = auth.info.email
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
