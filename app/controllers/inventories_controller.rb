class InventoriesController < ApplicationController
  def index
    @current_user = current_user
    @inventories = Inventory.all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end
end
