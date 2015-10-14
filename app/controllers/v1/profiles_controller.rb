class V1::ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]


  
  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all.includes(:user,:posts)
    for profile in @profiles
        profile.user.nickname.capitalize!
    end
    render json: @profiles
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show

    @profile = Profile.includes(:user,:posts).find(params[:id])
    # TODO: I need this to sort by number of endorsements
    # @profile.posts = @profile.posts.sort_by{|x| x.endorsements.length}.reverse
    @profile.user.nickname.capitalize!
    render json: @profile
    
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      @profile.user.nickname.capitalize!
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy

    head :no_content
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
      @profile.user.nickname.capitalize!
    end

    def profile_params
      params.require(:profile).permit(:introduction)
    end
end
