class LoadToMobilesController < ApplicationController
  before_action :set_load_to_mobile, only: [:show, :edit, :update, :destroy]

  # GET /load_to_mobiles
  # GET /load_to_mobiles.json
  def index
    @load_to_mobiles = LoadToMobile.all
  end

  # GET /load_to_mobiles/1
  # GET /load_to_mobiles/1.json
  def show
  end

  # GET /load_to_mobiles/new
  def new
    @load_to_mobile = LoadToMobile.new
  end

  # GET /load_to_mobiles/1/edit
  def edit
  end

  # POST /load_to_mobiles
  # POST /load_to_mobiles.json
  def create
    @load_to_mobile = LoadToMobile.new(load_to_mobile_params)

    respond_to do |format|
      if @load_to_mobile.save
        format.html { redirect_to @load_to_mobile, notice: 'Load to mobile was successfully created.' }
        format.json { render :show, status: :created, location: @load_to_mobile }
      else
        format.html { render :new }
        format.json { render json: @load_to_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /load_to_mobiles/1
  # PATCH/PUT /load_to_mobiles/1.json
  def update
    respond_to do |format|
      if @load_to_mobile.update(load_to_mobile_params)
        format.html { redirect_to @load_to_mobile, notice: 'Load to mobile was successfully updated.' }
        format.json { render :show, status: :ok, location: @load_to_mobile }
      else
        format.html { render :edit }
        format.json { render json: @load_to_mobile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /load_to_mobiles/1
  # DELETE /load_to_mobiles/1.json
  def destroy
    @load_to_mobile.destroy
    respond_to do |format|
      format.html { redirect_to load_to_mobiles_url, notice: 'Load to mobile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load_to_mobile
      @load_to_mobile = LoadToMobile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_to_mobile_params
      params.require(:load_to_mobile).permit(:accept, :decline, :driver_user_id, :driver_email)
    end
end
