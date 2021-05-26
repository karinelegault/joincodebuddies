class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  def home
    @user = current_user
  end
  
  def default_url_options
    { host: ENV["joincodebuddies.com"] || "localhost:3000" }
  end

end
