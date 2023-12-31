class TopsController < ApplicationController
  def index
    @latest_news = News.order(created_at: :desc).limit(3)
    @staff = Staff.find(1)
  end
end
