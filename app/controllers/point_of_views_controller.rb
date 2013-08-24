class PointOfViewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_point_of_view, only: [:show, :edit, :update, :destroy]

  # GET /point_of_views
  def index
    @point_of_views = PointOfView.all
  end

  # GET /point_of_views/1
  def show
    @json = @point_of_view.to_gmaps4rails
    binding.pry
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
    params[:point_of_view][:duration] = (params[:point_of_view][:days].to_i * 86400 + params[:point_of_view][:hours].to_i * 3600 + params[:point_of_view][:minutes].to_i * 60).to_s
    params[:point_of_view].delete(:days)
    params[:point_of_view].delete(:hours)
    params[:point_of_view].delete(:minutes)
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
    params[:point_of_view][:duration] = (params[:point_of_view][:days].to_i * 86400 + params[:point_of_view][:hours].to_i * 3600 + params[:point_of_view][:minutes].to_i * 60).to_s
    params[:point_of_view].delete(:days)
    params[:point_of_view].delete(:hours)
    params[:point_of_view].delete(:minutes)
    if @point_of_view.update(point_of_view_params)
      flash[:notice] = 'Point of view was successfully updated.'
      redirect_to user_dashboard_path(current_user)
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
