class Moderator::ModeratorController < ApplicationController

  before_filter :authenticate_moderator!

  private

    def authenticate_moderator!
      unless current_user.has_role?(:moderator) || current_user.has_role?(:admin)
        redirect_to new_user_session_path
        flash[:error] = "Logging into this section requires moderator privileges"
        return false
      end
    end


end
