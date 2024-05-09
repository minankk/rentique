class ItemsController < ApplicationController
  def index
    if params[:query].present?
      @items = Item.search_by_description_and_category(params[:query])
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def new

  end

  def create

  end
end
