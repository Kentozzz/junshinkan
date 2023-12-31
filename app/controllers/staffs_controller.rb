class StaffsController < ApplicationController
  def index
    @staffs = Staff.all
  end
  def new
    @staff = Staff.new
  end
  
  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to staffs_path
    else
      render 'new'
    end
  end
  
  def edit
    @staff = Staff.find(params[:id])
  end

  def update
    @staff = Staff.find(params[:id])
    if @staff.update(staff_params)
      redirect_to staffs_path
    else
      render 'edit'
    end
  end
  
  def destroy
    staff = Staff.find(params[:id])
    staff.destroy
    redirect_to staffs_path
  end
  private
  def staff_params
    params.require(:staff).permit(:name, :position, :specialty, :description, :image)
  end
  
end
