# frozen_string_literal: true

class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @chip_number = params[:chip_number]
    @user = User.new
    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    params[:user].delete(:pets_attributes) if params[:user].has_key?(:pets_attributes) &&
      !params[:user][:pets_attributes].blank? &&
      params[:user][:pets_attributes]['0']['chip_number'].blank?
    devise_parameter_sanitizer.permit(:sign_up){ |u|
      u.permit(:email, :password, :password_confirmation, :name, :phone_primary, :phone_secondary, :postal_code,
              :province, :address, :city, :country, pets_attributes: [:chip_number, :name, :species])
    }
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   return super(resource) if resource.pets.blank?
  #   redirect_to pets_path(resource.pets.first)
  # end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    return super(resource) if resource.pets.blank?
    pet_path(resource.pets.first)
  end
end
