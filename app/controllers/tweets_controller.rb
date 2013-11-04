class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order('id DESC')
    @new_tweet = Tweet.new
  end

  def create
    @new_tweet = Tweet.new(params[:tweet])

    if @new_tweet.save
      redirect_to :action => "index"
    else
      render :action => "index"
    end
  end
end