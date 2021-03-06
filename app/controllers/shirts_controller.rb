class ShirtsController < ApplicationController
  before_action :set_shirt, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, except: [:show, :index]

  # GET /shirts
  # GET /shirts.json
  def index
    @shirts = Shirt.paginate(:page => params[:page], :per_page => 8)
  end

  # GET /shirts/1
  # GET /shirts/1.json
  def show
  end

  # GET /shirts/new
  def new
    @shirt = Shirt.new
  end

  # GET /shirts/1/edit
  def edit
  end

  # POST /shirts
  # POST /shirts.json
  def create
    @shirt = Shirt.new(shirt_params)

    respond_to do |format|
      if @shirt.save
        format.html { redirect_to @shirt }
        format.json { render action: 'show', status: :created, location: @shirt }
      else
        format.html { render action: 'new' }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shirts/1
  # PATCH/PUT /shirts/1.json
  def update
    respond_to do |format|
      if @shirt.update(shirt_params)
        format.html { redirect_to @shirt }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shirt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shirts/1
  # DELETE /shirts/1.json
  def destroy
    @shirt.destroy
    respond_to do |format|
      format.html { redirect_to shirts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shirt
      @shirt = Shirt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shirt_params
      params.require(:shirt).permit(:name, :description, :image)
    end
end
