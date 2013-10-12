class HmessagesController < ApplicationController
  before_action :authenticate_user!
  
  # GET /hmessages/new
  def new
    @hmessage = Hmessage.new
    @hmessage.hire_id = params[:hire_id]
  end

  # POST /hmessages
  def create
    @hmessage = Hmessage.new(hmessage_params)
    @hmessage.user_id = current_user.id
    @hmessage.hire_id = hmessage_params[:hire_id]

    if @hmessage.save
      redirect_to hire_path(@hmessage.hire.id), notice: 'Hmessage was successfully created.'
    else
      render action: 'new'
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def hmessage_params
      params.require(:hmessage).permit(:content, :hire_id, :user_id)
    end
end
