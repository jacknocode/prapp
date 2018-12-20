class CategoriesController < ApplicationController
  # Convention over Configuration (CoC)

  def index
    # @categories = Category.all.order(created_at: 'asc')
    @categories = Category.search(params[:search])
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    # render plain: params[:post].inspect
    # save
    # @post = Post.new(params[:post])
    # @post = Post.new(params.require(:post).permit(:title, :body))
    @category = Category.new(category_params)
    if @category.save
      # redirect
      redirect_to categories_path(@category)
    else
      # render plain: @post.errors.inspect
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end


  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private
    def category_params
      params.require(:category).permit(:name,:code)
    end

end
