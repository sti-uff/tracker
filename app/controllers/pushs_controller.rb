class PushsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :create
  skip_before_filter :authenticate_user!, :create

  def create
    @push = PushHook.new(params)
    if @push.save!
      render :nothing => true, :status => :ok
    else
      render :nothing => true, :status => :internal_server_error
    end
  end

end
