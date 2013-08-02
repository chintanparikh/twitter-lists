class TwitterListsController < ApplicationController
  def new
  end

  def create
    if params[:password] == "hacksonhacksonhacks"
      Twitter.list_add_member('the-hacker-league', params[:handle])
      flash[:message] = "Success. Probably. Check yo twitter"
    else
      flash[:error] = "Hacks. Wrong password"
    end
    render :new
  end
end
