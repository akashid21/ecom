class Admin < User
  def active_for_authentication?
    super && admin?
  end
end