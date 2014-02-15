class ProfilesController < ApplicationController

  before_filter :authenticate_user!, only: [:new, :create, :edit, :update]

  def edit

  end

  def show
    @user = Truckuser.find(params[:profile_id])
    @truckname = Truckuser.find(params[:profile_id]).truckname
    @ownerfirstname = Truckuser.find(params[:profile_id]).ownerfirstname
    @ownerlastname = Truckuser.find(params[:profile_id]).ownerlastname
    @address = Truckuser.find(params[:profile_id]).address
    @city = Truckuser.find(params[:profile_id]).city
    @state = Truckuser.find(params[:profile_id]).state
    @zipcode = Truckuser.find(params[:profile_id]).zipcode
    @category = Truckuser.find(params[:profile_id]).category
    @description = Truckuser.find(params[:profile_id]).description
    @latitude = Truckuser.find(params[:profile_id]).latitude
    @longitude = Truckuser.find(params[:profile_id]).longitude
    @full_address = Truckuser.find(params[:profile_id]).full_address

    @hash = Gmaps4rails.build_markers(@user) do |truckuser, marker|
      marker.lat truckuser.latitude
      marker.lng truckuser.longitude
    end
  end


end
