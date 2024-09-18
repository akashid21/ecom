class Client < User
  has_many :orders
  def active_for_authentication?
    super && self.client?
  end
end