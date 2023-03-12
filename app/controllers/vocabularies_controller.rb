class VocabulariesController < ApplicationController

  def create
    @category = Category.find(params[:category_id])
    @vocabulary = @category.vocabularies.build(vocabulary_params)
    if @vocabulary.save
      redirect_to category_path(@category)
    else
      @vocabularies = @category.vocabularies
      render 'categories/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @category = Category.find(params[:category_id])
    @vocabulary = @category.vocabularies.find(params[:id])
    @vocabulary.destroy
    redirect_to category_path(@category)
  end

  private
  def vocabulary_params
    params.require(:vocabulary).permit(:title, :meaning)
  end

end
