class ParseUsersController < ApplicationController
  before_action :set_parse_user, only: [:show, :edit, :update, :destroy]

  # GET /parse_users
  # GET /parse_users.json
  def index
    @parse_users = ParseUser.all
  end

  # GET /parse_users/1
  # GET /parse_users/1.json
  def show
  end

  # GET /parse_users/new
  def new
    @parse_user = ParseUser.new
  end

  # GET /parse_users/1/edit
  def edit
  end

  # POST /parse_users
  # POST /parse_users.json
  def create
    @parse_user = ParseUser.new(parse_user_params)

    respond_to do |format|
      if @parse_user.save
        format.html { redirect_to @parse_user, notice: 'Parse user was successfully created.' }
        format.json { render :show, status: :created, location: @parse_user }
      else
        format.html { render :new }
        format.json { render json: @parse_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parse_users/1
  # PATCH/PUT /parse_users/1.json
  def update
    respond_to do |format|
      if @parse_user.update(parse_user_params)
        format.html { redirect_to @parse_user, notice: 'Parse user was successfully updated.' }
        format.json { render :show, status: :ok, location: @parse_user }
      else
        format.html { render :edit }
        format.json { render json: @parse_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parse_users/1
  # DELETE /parse_users/1.json
  def destroy
    @parse_user.destroy
    respond_to do |format|
      format.html { redirect_to parse_users_url, notice: 'Parse user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parse_user
      @parse_user = ParseUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parse_user_params
      params.require(:parse_user).permit(:email, :password, :username)
    end
end
