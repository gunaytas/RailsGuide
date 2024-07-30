class TextsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @text = @article.texts.create(text_params)

    redirect_to article_path(@article)
  end

  private
    def text_params
      params.require(:text).permit(:body)
    end
end
