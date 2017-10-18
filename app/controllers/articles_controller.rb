class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!,except:[:index, :show]
 
  # GET /articles
  # GET /articles.json


  def index
      @articles = Article.all.order(created_at: :desc).paginate(:page => params[:page], per_page: 7)
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @comments = @article.comments.order("created_at DESC").paginate(:page => params[:page], per_page: 2)
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.autor = current_user.first_name

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
        format.js
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  #upvote_from user
  #downvote_from user
  def upvote
    @article.upvote_from current_user
    redirect_back(fallback_location: articles_path)

  end
  def downvote
    @article.downvote_from current_user
    redirect_back(fallback_location: articles_path)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :article_body, :autor, :photo)
    end
end
