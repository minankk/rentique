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
    @item = Item.new
    @categories = ["Dresses", "Suits", "Accessories", "Jackets", "shoes"]
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item), notice: "Wardbrobe was successfully created."
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:description, :category, :retail_price, :rental_price)
  end
end
