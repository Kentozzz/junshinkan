class NewsController < ApplicationController
  before_action :set_news, only: %i[show edit update destroy]

  def index
    @news = News.order(id: :desc)
  end
  # GET /news/new
  def new
    @news = News.new
  end

  # POST /news
  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to @news, notice: 'News was successfully created.'
    else
      render :new
    end
  end

  # GET /news/1
  def show
    # @news is already set by the `set_news` before_action
  end

  # GET /news/1/edit
  def edit
    # @news is already set by the `set_news` before_action
  end

  # PATCH/PUT /news/1
  def update
    if @news.update(news_params)
      redirect_to @news, notice: 'News was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /news/1
  def destroy
    @news.destroy
    redirect_to news_index_url, notice: 'News was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_news
      @news = News.find(params[:id])
    end

    # Only allow a list of trusted parameters through
    def news_params
      params.require(:news).permit(:title, :content, :author, :published_at)
    end
end
