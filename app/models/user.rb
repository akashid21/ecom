class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: %i[client admin user]

  has_many_attached :images

  def active_for_authentication?
    # debugger
    return super if self.is_a?(Client) || self.is_a?(Admin)
    # Default user role check
    super && self.user?
  end
end
