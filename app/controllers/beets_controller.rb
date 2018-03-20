class BeetsController < ApplicationController
  before_action :set_beet, only: [:show, :edit, :update, :destroy]

  # GET /beets
  # GET /beets.json
  def index
    @beets = Beet.all
  end

  # GET /beets/1
  # GET /beets/1.json
  def show
  end

  # GET /beets/new
  def new
    @beet = Beet.new
  end

  # GET /beets/1/edit
  def edit
  end

  # POST /beets
  # POST /beets.json
  def create
    @beet = Beet.new(beet_params)

    respond_to do |format|
      if @beet.save
        format.html { redirect_to @beet, notice: 'Beet was successfully created.' }
        format.json { render :show, status: :created, location: @beet }
      else
        format.html { render :new }
        format.json { render json: @beet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beets/1
  # PATCH/PUT /beets/1.json
  def update
    respond_to do |format|
      if @beet.update(beet_params)
        format.html { redirect_to @beet, notice: 'Beet was successfully updated.' }
        format.json { render :show, status: :ok, location: @beet }
      else
        format.html { render :edit }
        format.json { render json: @beet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beets/1
  # DELETE /beets/1.json
  def destroy
    @beet.destroy
    respond_to do |format|
      format.html { redirect_to beets_url, notice: 'Beet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beet
      @beet = Beet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beet_params
      params.require(:beet).permit(:title, :body)
    end
end
