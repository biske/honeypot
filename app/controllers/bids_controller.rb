class BidsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bid, only: [:edit, :update, :destroy]

  # GET /bids/new
  def new
    @bid = Bid.new
    @bid.task_id = params[:task_id]
  end

  # GET /bids/1/edit
  def edit
  end

  # POST /bids
  def create
    @bid = Bid.new(bid_params)
    @bid.user_id = current_user.id
    if @bid.save
      redirect_to user_task_path(id: @bid.task_id, user_id: current_user.id), notice: 'Bid was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /bids/1
  def update
    if @bid.update(bid_params)
      redirect_to user_task_path(id: @bid.task_id, user_id: current_user.id), notice: 'Bid was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /bids/1
  def destroy
    @bid.destroy
    redirect_to user_task_path(id: @bid.task_id, user_id: current_user.id), notice: 'Bid was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bid_params
      params.require(:bid).permit(:description, :how_much, :task_id)
    end
end
