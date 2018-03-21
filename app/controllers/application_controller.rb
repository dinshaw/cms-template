class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_paper_trail_whodunnit

  protected

  def after_sign_in_path_for(resource)
    admin_dashboard_path
  end
end
