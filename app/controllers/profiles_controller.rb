class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all

      if params[:search]
      @profile = Profile.search(params[:search]).order("created_at DESC")
     else
      @profile = Profile.all.order('created_at DESC')
     end

  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    # @profile = current_user.profile
    @profile = Profile.find(params[:id])

  end

  # GET /profiles/new
  def new
    # @profile = Profile.new
    @profile = current_user.build_profile
  end

  # GET /profiles/1/edit
  def edit
    @profile = current_user.profile.find(params[:id])
  end

  # POST /profiles
  # POST /profiles.json
  def create
    # @profile = Profile.new(profile_params)
    @profile = current_user.build_profile(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    authorize @profile
    @profile = current_user.profile.find(params[:id])
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    authorize @profile
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :username, :age, :gender, :city, :bio, :interests, :user_id, :avatar)
    end
end
