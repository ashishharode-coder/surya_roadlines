class VehicleOwnersController < ApplicationController
  before_action :set_vo, only: [:show, :edit, :update, :destroy]

  def index
    @vehicle_owners = VehicleOwner.all
  end

  def show
  end

  def new
    @vehicle_owner = VehicleOwner.new
  end

  def create
    vehicle_owner = VehicleOwner.new(vo_params)
    if vehicle_owner.save
      flash[:success] = "Vehicle Owner added successfully."
      redirect_to vehicle_owners_path
    else
      flash[:error] = vehicle_owner.errors.full_messages[0]
      redirect_to new_vehicle_owner_path
    end
  end

  def edit
    
  end

  def update
    if @vehicle_owner.update(vo_params)
      flash[:success] = "Vehicle Owner updated successfully."
      redirect_to vehicle_owner_path(@vehicle_owner)
    else
      flash[:error] = vehicle_owner.errors.full_messages[0]
      redirect_to edit_vehicle_owner_path(@vehicle_owner)
    end
  end

  def destroy
    
  end

  private

  def vo_params
    params.require(:vehicle_owner).permit(:email, :first_name, :last_name, :mobile_number, :alt_mobile_number, :address, :status, :image)
  end

  def set_vo
    @vehicle_owner = VehicleOwner.find_by(id: params[:id])
  end
end