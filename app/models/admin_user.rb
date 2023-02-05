class AdminUser < ApplicationRecord
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
