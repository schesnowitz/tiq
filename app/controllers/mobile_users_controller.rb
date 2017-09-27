class MobileUsersController < ApplicationController
  before_action :set_mobile_user, only: [:show, :edit, :update, :destroy]


  # GET /mobile_users
  # GET /mobile_users.json
  def index

    @mobile_users = MobileUser.all
    @driver = DriverUser.find(params[:driver_user_id])    
  end

  # GET /mobile_users/1
  # GET /mobile_users/1.json
  def show
    @driver = DriverUser.find(params[:driver_user_id])
  end
      
  # GET /mobile_users/new
  def new
    @driver = DriverUser.find(params[:driver_user_id])

    @mobile_user = @driver.build_mobile_user
  end 

  # GET /mobile_users/1/edit
  def edit
    @driver = DriverUser.find(params[:driver_user_id])    
  end

  # POST /mobile_users
  # POST /mobile_users.json
  def create
    @driver = DriverUser.find(params[:driver_user_id])

    @mobile_user = @driver.build_mobile_user(mobile_user_params) 
    respond_to do |format|
      if @mobile_user.save
        format.html { redirect_to driver_user_mobile_user_path(@driver, @mobile_user), notice: 'Mobile user was successfully created.' }
        format.json { render :show, status: :created, location: @mobile_user }
      else
        flash[:error] = @mobile_user.errors.full_messages.to_sentence    
        format.html { render :new }
        format.json { render json: @mobile_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobile_users/1
  # PATCH/PUT /mobile_users/1.json
  def update
    @driver = DriverUser.find(params[:driver_user_id])    
    respond_to do |format|
      if @mobile_user.update(mobile_user_params)
        format.html { redirect_to driver_user_mobile_user_path(@driver, @mobile_user), notice: 'Mobile user was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobile_user }
      else
        flash[:error] = @mobile_user.errors.full_messages.to_sentence
        format.html { render :edit }
        format.json { render json: @mobile_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobile_users/1
  # DELETE /mobile_users/1.json
  def destroy
    @driver = DriverUser.find(params[:driver_user_id])  
    @mobile_user.destroy
    respond_to do |format|
      format.html { redirect_to mobile_users_url, notice: 'Mobile user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobile_user
      @mobile_user = MobileUser.find(params[:id])
    end
    


    # Never trust parameters from the scary internet, only allow the white list through.
    def mobile_user_params
      params.require(:mobile_user).permit(:email, 
                                          :username, 
                                          # :password, 
                                          # :driver_user_id, 
                                          # :rails_driver_user_id_int, 
                                          # :rails_driver_id_string,
                                          :rate,
                                          :note,
                                          :data, :driver_user_attributes => [:password, :email, :first_name, :last_name, :driver_user_id]
                                          )  
    end
end

