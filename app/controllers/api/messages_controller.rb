# frozen_string_literal: true

module API
  # Displays a list of all messages, ordered by most gigs
  class MessagesController < ApplicationController
    include ActionController::Cookies
    
    def index
      @user = User.find params[:user_id]
      if @user.id.to_s == cookies[:user_id]
        @messages = Message.where(sender: @user).or(Message.where(recipient: @user))
        @contact_list = generate_contacts(@user, @messages)

        render json: { contacts: @contact_list }
      else
        render status: :unauthorized,
               json: { error: 'User validation error' }
      end
    end

    def show
      @user = User.find params[:user_id]

      if @user.id.to_s == cookies[:user_id]
        @other = User.find params[:id]
        @messages = Message.where(sender: @user, recipient: @other).or(Message.where(recipient: @user, sender: @other))

        render json: { messages: @messages }
      else
        render status: :unauthorized,
               json: { error: 'User validation error' }
      end
    end

    ## In case it's needed, not in routes.rb right now
    # def new
    #   @message = Message.new

    #   render json: { success: @message }
    # end

    def create
      @message = Message.new(message_params)

      render json: { success: @message } if @message.save!
    end

    private

    def message_params
      params.require(:message)
            .permit(:sender_id, :recipient_id, :content, :read_by_recipient)
    end

    def generate_contacts(user, messages)
      @contact_list = []

      messages.each do |message|
        if message.sender == user
          @contact_list.push(message.recipient) unless @contact_list.include? message.recipient
        elsif message.recipient == user
          @contact_list.push(message.sender) unless @contact_list.include? message.sender
        end
      end

      @contact_list
    end
  end
end
