class ItemsController < ApplicationController

  def index
    @category = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @category = Category.find(params[:category_id])
    @item =  @category.items.create(item_params)
    if @item.save
    redirect_to category_path(@category)
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @item = @category.items.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    # render plain: params[:item].inspect
    @item = Item.find(params[:id])
    if    @item.update(item_params)
    redirect_to category_item_path
    else
      render 'edit'
    end
  end

 def destroy
    @category = Category.find(params[:category_id])
    @item = @category.items.find(params[:id])
    @item.destroy
    redirect_to category_path(@category)
  end

  private
    def item_params
      params.require(:item).permit(:name,:category_id)
    end
end
