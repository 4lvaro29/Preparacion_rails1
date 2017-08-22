class PagesController < ApplicationController
  def landing
    @users = User.all
  end

  def save_user
    
    if params[:name].present? && params[:email].present? && params[:age].present?
        
        User.create(name: params[:name], email: params[:email], age: params[:age])  
      else

        redirect_to pages_landing_path, alert: "Los campos son obligatorios"
      
      end

      redirect_to pages_landing_path, notice:"El usuario ha sido creado"
  end

  def elements  
end
