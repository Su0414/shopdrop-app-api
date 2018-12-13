class Api::ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = Item.all 
    render json: @items , status: 200
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      render json: @item , status: 200
    else
      render json: @item , status: 400
    end
  end 

  def show
    render json: @item 
  end

  def update     
    puts "in update"
    if @item.update(item_params)
      render json: @item , status: 200
    else
      render json: { message: @item.errors } , status: 400
    end
  end

  def destroy     
    if @item.delete
      render json: @item , status: 200
    else
      render json: { message: @item.errors } , status: 400
    end
  end

  private
    def set_item
      @item = Item.find_by(id: params[:id])
    end 

    def item_params
      params.require(:item).permit(:name, :description, :price, :image_url, :likes_count)
    end 

   
end
