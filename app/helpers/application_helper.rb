module ApplicationHelper
    def authenticate_user
        unless current_user
          flash[:alert] = "Please log in."
          redirect_to new_user_session_path
        end
       end
   
       def authenticate_current_user
         @event = Event.find(params[:id].to_i)
         unless current_user.id == @event.user_id
           redirect_to events_path
           end
       end
end
