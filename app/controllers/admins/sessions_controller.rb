class Admins::SessionsController < Devise::SessionsController
  include AuthorizeUsers
  before_action :check_admin
end