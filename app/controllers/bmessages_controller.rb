class BmessagesController < ApplicationController
  before_action :authenticate_user!
  # GET /bmessages/new
  def new
    @bmessage = Bmessage.new
    @bmessage.bid_id = params[:bid_id]
  end

  # POST /bmessages
  def create
    @bmessage = Bmessage.new(bmessage_params)
    @bmessage.user_id = current_user.id
    @bmessage.bid_id = bmessage_params[:bid_id]
    
    if @bmessage.save
      redirect_to bid_path(@bmessage.bid.id), notice: 'Bmessage was successfully created.'
    else
      render action: 'new'
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def bmessage_params
      params.require(:bmessage).permit(:content, :bid_id, :user_id)
    end
end
