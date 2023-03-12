class CategoriesController < ApplicationController
  
  def index
    @category = Category.new
  end

  def new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :index
    end
  end

  def show
    @category = Category.find(params[:id])
    @vocabulary = Vocabulary.new
    @vocabularies = @category.vocabularies
  end

  private
  def category_params
    params.require(:category).permit(:title).merge(user_id: current_user.id)
  end

end
