class ProfilesController < ApplicationController



  def show
    @user = Truckuser.find(params[:profile_id])
    @truckname = Truckuser.find(params[:profile_id]).truckname
    @ownerfirstname = Truckuser.find(params[:profile_id]).ownerfirstname
    @ownerlastname = Truckuser.find(params[:profile_id]).ownerlastname
    @address = Truckuser.find(params[:profile_id]).address
    @city = Truckuser.find(params[:profile_id]).city
    @state = Truckuser.find(params[:profile_id]).state
    @zip = Truckuser.find(params[:profile_id]).zipcode
    @category = Truckuser.find(params[:profile_id]).category
    @description = Truckuser.find(params[:profile_id]).description
    @latitude = Truckuser.find(params[:profile_id]).latitude
    @longitude = Truckuser.find(params[:profile_id]).longitude
  end
end
