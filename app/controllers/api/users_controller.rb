# frozen_string_literal: true

module API
  # Returns information about a given User
  class UsersController < ApplicationController
    def show
      @user = User.find params[:id]
      render json: @user
    end

    def create; end

    def destroy; end
  end
end
