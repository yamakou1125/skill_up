class ItemsController < ApplicationController

def new
    @item = Item.new
end

def create
    @item = Item.new(item_params)
      @item.user_id = current_user.id
    if @item.save
      flash[:notice] = "登録が完了しました。"
      redirect_to new_items
    else
      render :new
    end
end

def index
  @items = Item.all
end

end