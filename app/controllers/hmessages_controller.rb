class HmessagesController < ApplicationController
  before_action :set_hmessage, only: [:show, :edit, :update, :destroy]

  # GET /hmessages
  def index
    @hmessages = Hmessage.all
  end

  # GET /hmessages/1
  def show
  end

  # GET /hmessages/new
  def new
    @hmessage = Hmessage.new
  end

  # GET /hmessages/1/edit
  def edit
  end

  # POST /hmessages
  def create
    @hmessage = Hmessage.new(hmessage_params)

    if @hmessage.save
      redirect_to @hmessage, notice: 'Hmessage was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /hmessages/1
  def update
    if @hmessage.update(hmessage_params)
      redirect_to @hmessage, notice: 'Hmessage was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /hmessages/1
  def destroy
    @hmessage.destroy
    redirect_to hmessages_url, notice: 'Hmessage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hmessage
      @hmessage = Hmessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hmessage_params
      params.require(:hmessage).permit(:content, :point_of_view_id, :user_id)
    end
end
