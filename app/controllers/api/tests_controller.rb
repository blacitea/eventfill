# frozen_string_literal: true

module API
  class TestsController < ApplicationController #:nodoc:
    def index
      render json: {
        message: 'hello!'
      }
    end
  end
end
