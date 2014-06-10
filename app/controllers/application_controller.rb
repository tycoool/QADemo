class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_authentication

  def render404
    render :file => File.join(Rails.root, 'public', '404.html'), :status => 404, :layout => false
    return true
  end
 
  def check_authentication
    authenticate_user!
  end

end
