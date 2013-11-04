class TweetsController < ApplicationController

  def index
    @tweets = Tweet.order('id DESC')
  end

  #def create
  #  @tweet = Tweet.new()
  #end
end
