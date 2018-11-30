class Api::ItemsController < ApplicationController
  def index
    @items = Item.all 
    render json: @items , status: 200
  end

  def show
  end

  def new
  end

  def edit
  end
end
