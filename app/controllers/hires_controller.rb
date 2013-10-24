class HiresController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hire, only: [:show, :edit, :update, :destroy]

  # GET /hires
  def index
    @hires = Hire.all
  end

  # GET /bids/select
  def select
    @hire = Hire.find(params[:hire_id])
    if @hire.select
      redirect_to user_point_of_view_path(id: @hire.point_of_view_id, user_id: current_user.id), notice: 'Hire was successfully selected.'
    end
  end

  # GET /hires/new
  def new
    @hire = Hire.new
    @hire.point_of_view_id = params[:point_of_view_id]
  end

  # POST /hires
  def create
    @hire = Hire.new(hire_params)
    @hire.user_id = current_user.id

    if @hire.save
      redirect_to user_point_of_view_path(id: @hire.point_of_view_id, user_id: current_user.id), notice: 'Hire was successfully created.'
    else
      render action: 'new'
    end
  end

  # GET /hires/1/edit
  def edit
  end

  # PATCH/PUT /hires/1
  def update
    if @hire.update(hire_params)
      redirect_to @hire, notice: 'Hire was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /hires/1
  def destroy
    @hire.destroy
    redirect_to hires_url, notice: 'Hire was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hire
      @hire = Hire.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hire_params
      params.require(:hire).permit(:how_much, :selected, :user_id, :point_of_view_id)
    end
end
