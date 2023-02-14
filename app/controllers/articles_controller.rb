class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :require_login
  authorize_resource

  def index
    @articles = Article.all
  end

  # 論理削除されたデータを全て取得 参考:https://qiita.com/piggydev/items/05e7276ed0cada69da76
  def discard_index
    @articles = Article.all.with_discarded.discarded
  end

  def show; end

  def new
    # 参考 https://qiita.com/tobita0000/items/866de191635e6d74e392
    @article = current_user.articles.build
  end

  def edit; end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_url, notice: '記事を登録しました。' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: '記事を登録を修正しました。' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.discard

    respond_to do |format|
      format.html { redirect_to articles_url, notice: '記事登録を削除しました。' }
      format.json { head :no_content }
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:url, :description, :user_id)
  end
end
