class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def new
    @current_user = current_user
    @inventories = Inventory.new

  end

  def create
    @inventory = current_user.inventories.create(params_inventory)

    if @inventory.save
      redirect_to inventories_path, notice: 'Your Inventory is created successfully 💯'
    else
      flash[:alert] = 'Something went wrong, Try again!'
      render :new
    end
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
    redirect_to inventories_path
  end

  def params_inventory
    params.require(:inventory).permit(:name, :description)
  end
end
