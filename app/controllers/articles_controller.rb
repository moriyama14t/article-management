class ArticlesController < ApplicationController
  before_action :require_login
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def discard_index
    # 論理削除されたデータを全て取得 参考:https://qiita.com/piggydev/items/05e7276ed0cada69da76
    @articles = Article.all.with_discarded.discarded
  end

  # GET /articles/1 or /articles/1.json
  def show; end

  # GET /articles/new
  def new
    # 参考 https://qiita.com/tobita0000/items/866de191635e6d74e392
    @article = current_user.articles.build
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_url, notice: '記事を登録しました。' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: '記事を登録を修正しました。' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article.discard

    respond_to do |format|
      format.html { redirect_to articles_url, notice: '記事登録を削除しました。' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:url, :description, :user_id)
  end
end
