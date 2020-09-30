# frozen_string_literal: true

# Returns information about a given User
class Api::UsersController < ApplicationController
  def show
    @user = User.find params[:id]
    render json: @user
  end
end
