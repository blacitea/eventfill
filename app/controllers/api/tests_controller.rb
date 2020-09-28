# frozen_string_literal: true

module Api
  class TestsController < ApplicationController #:nodoc:
    def index
      render json: {
        message: 'hello!'
      }
    end
  end
end
