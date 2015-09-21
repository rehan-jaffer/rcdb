class Admin::AdminController < ApplicationController

  before_action :authenticate_user!
  before_action :authenticate_admin!

  private

    def authenticate_admin!
      unless current_user.has_role? :admin
        redirect_to new_user_session_path
        flash[:error] = "Logging into this section requires admin privileges"
        return false
      end
    end

end
