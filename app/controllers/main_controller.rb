class MainController < ApplicationController

  def doors
    @chosen_door = params[:door]
  end

  def auth_callback
    omni_auth_params = env["omniauth.params"]
    chosen_door = omni_auth_params["door"] if !omni_auth_params.blank? 
    redirect_to(door_path(chosen_door))
  end

end
