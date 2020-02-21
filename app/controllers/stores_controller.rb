class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit,:update,:destroy]
  def index
    @stores = Store.all
  end

  def show
   
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(stores_params)
 
    if @pstore.save
      redirect_to stores_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
  
    if @store.update(stores_params)
      redirect_to store_path
    else
      render :edit
    end
  end

  def destroy
    @store.destroy
  redirect_to stores_path 
  end

  private

   def store_params
     params.require(:store).permit(:shoe,:jecket,:hat,:kid,:food)
   end

   def set_store
    @store = Store.find(params[:id])
   end
end
