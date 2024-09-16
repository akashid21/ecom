class Users::SessionsController < Devise::SessionsController
  include AuthorizeUsers
  before_action :check_user
end