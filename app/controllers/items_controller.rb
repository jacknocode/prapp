class ItemsController < ApplicationController

  def index
    @items = params[:search] ? Item.search(params[:search]) : Item.all
    @items = @items.where(category: Category.find(params[:category])) if params[:category]
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
    redirect_to item_path(@item)
    else
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    # render plain: params[:item].inspect
    if    @item.update(item_params)
    redirect_to item_path
    else
      render 'edit'
    end
  end

 def destroy
    @item.destroy
    redirect_to items_path
  end

  private
    def item_params
      params.require(:item).permit(:name,:category_id,:code)
    end
end
