class Clients::SessionsController < Devise::SessionsController
  include AuthorizeUsers
  before_action :check_client
end