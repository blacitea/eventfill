# frozen_string_literal: true

module Api
  class TestsController < ApplicationController
    def index
      render json: {
        message: 'hello!'
      }
    end
  end
end
