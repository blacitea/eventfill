# frozen_string_literal: true

module API
  # Displays a list of all messages, ordered by most gigs
  class MessagesController < ApplicationController
    def index
      @user = User.find params[:user_id]
      messages = Message.where(sender: @user).or(Message.where(recipient: @user))
      @contact_list = []

      messages.each do |message|
        if message.sender == @user
          @contact_list.push(message.recipient) unless @contact_list.include? message.recipient
        end
        next unless message.recipient == @user

        @contact_list.push(message.sender) unless @contact_list.include? message.sender
      end

      render json: { contacts: @contact_list }
    end

    def show
      @user = User.find params[:user_id]
      @other = User.find params[:id]
      @messages = Message.where(sender: @user, recipient: @other).or(Message.where(recipient: @user, sender: @other))

      render json: { messages: @messages }
    end

    ## In case it's needed, not in routes.rb right now
    # def new
    #   @message = Message.new

    #   render json: { success: @message }
    # end

    def create
      @message = Message.new(message_params)
      if @message.save
        render json: { success: @message }
      else
        render json: { error: @message.errors }
      end
    end

    private

    def message_params
      params.require(:message)
            .permit(:sender_id, :recipient_id, :content, :read_by_recipient)
    end
  end
end
