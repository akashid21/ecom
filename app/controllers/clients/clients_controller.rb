class Clients::ClientsController < ApplicationController
  before_action :authenticate_client!
end