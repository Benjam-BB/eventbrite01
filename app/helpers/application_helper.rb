module ApplicationHelper
    def authenticate_user!
        unless current_user
          redirect_to events_path
        end
    end
end
