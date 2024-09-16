module AuthorizeUsers
  def check_admin
    return unless current_client

    redirect_to clients_root_path, alert: 'Unauthorized user, you are already logged in as admin'
  end

  def check_client
    return unless current_admin

    redirect_to admins_root_path, alert: 'Unauthorized acces, you are already logged in as user.'
  end
end