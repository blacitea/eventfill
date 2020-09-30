# frozen_string_literal: true

class Api::TestsController < ApplicationController #:nodoc:
  def index
    render json: {
      message: 'hello!'
    }
  end
end
