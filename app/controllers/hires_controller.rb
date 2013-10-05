class HiresController < ApplicationController
  before_action :set_hire, only: [:show, :edit, :update, :destroy]

  # GET /hires
  def index
    @hires = Hire.all
  end

  # GET /hires/1
  def show
  end

  # GET /hires/1/edit
  def edit
  end

  # POST /hires
  def create
    @hire = Hire.new(hire_params)

    if @hire.save
      redirect_to user_point_of_view_path(@hire.user.id, @hire.point_of_view.id), notice: 'Hire was successfully created.'
    else
      redirect_to user_point_of_view_path(@hire.user.id, @hire.point_of_view.id), notice: 'Hire wasn\'t successfully create.'
    end
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
      params[:hire]
    end
end
