class BmessagesController < ApplicationController
  before_action :set_bmessage, only: [:show, :edit, :update, :destroy]

  # GET /bmessages
  def index
    @bmessages = Bmessage.all
  end

  # GET /bmessages/1
  def show
  end

  # GET /bmessages/new
  def new
    @bmessage = Bmessage.new
  end

  # GET /bmessages/1/edit
  def edit
  end

  # POST /bmessages
  def create
    @bmessage = Bmessage.new(bmessage_params)

    if @bmessage.save
      redirect_to @bmessage, notice: 'Bmessage was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /bmessages/1
  def update
    if @bmessage.update(bmessage_params)
      redirect_to @bmessage, notice: 'Bmessage was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /bmessages/1
  def destroy
    @bmessage.destroy
    redirect_to bmessages_url, notice: 'Bmessage was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmessage
      @bmessage = Bmessage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bmessage_params
      params.require(:bmessage).permit(:content, :bid_id, :user_id)
    end
end
