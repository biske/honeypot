class PointOfViewsController < ApplicationController
  before_action :set_point_of_view, only: [:show, :edit, :update, :destroy]

  # GET /point_of_views
  def index
    @point_of_views = PointOfView.all
  end

  # GET /point_of_views/1
  def show
  end

  # GET /point_of_views/new
  def new
    @point_of_view = PointOfView.new
  end

  # GET /point_of_views/1/edit
  def edit
  end

  # POST /point_of_views
  def create
    @point_of_view = current_user.point_of_views.new(point_of_view_params)

    if @point_of_view.save
      flash[:notice] = 'Point of view was successfully created.'
      redirect_to user_dashboard_path(current_user)
    else
      flash[:notice] = 'Correct errors.'
      render action: 'new'
    end
  end

  # PATCH/PUT /point_of_views/1
  def update
    if @point_of_view.update(point_of_view_params)
      redirect_to @point_of_view, notice: 'Point of view was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /point_of_views/1
  def destroy
    @point_of_view.destroy
    flash[:notice] = 'Point of view was successfully destroyed.'
    redirect_to user_dashboard_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_of_view
      @point_of_view = PointOfView.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def point_of_view_params
      params.require(:point_of_view).permit(:who, :what, :where, :duration, :how_much, :contact)
    end
end
