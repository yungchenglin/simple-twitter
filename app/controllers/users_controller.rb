class UsersController < ApplicationController

  def tweets
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    unless @user == current_user
          redirect_to user_path(@user)
    end
  end

  def update
  end

  def followings
    @followings # 基於測試規格，必須講定變數名稱
  end

  def followers
    @followers # 基於測試規格，必須講定變數名稱
  end

  def likes
    @likes # 基於測試規格，必須講定變數名稱
  end

end
