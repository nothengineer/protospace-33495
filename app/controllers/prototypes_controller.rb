class PrototypesController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit,:destroy]
  # only ログインしてないと入れないページを指定

  def index
      @prototypes = Prototype.all.order(id: "DESC")
  end
  

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new  
    end
  end  

  def show
    #5人のメンバーはそれぞれの投稿は見れない。投稿しない社長・副社長に関しては5人のメンバー全員の投稿を見れる。
    @prototype = Prototype.find(params[:id])
    if current_user.id == @prototype.user.id || current_user.position == '社長' ||  current_user.position == '代表取締役副社長'
      @comment = Comment.new
      @comments = @prototype.comments.includes(:user)
    else
      redirect_to user_path(params[:user_id])
    end
  end

  def edit
    @prototype = Prototype.find(params[:id])
    unless @prototype.user_id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to prototype_path
    else
      render :edit
    end
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
    redirect_to root_path
  end

  private

  def prototype_params
    params.require(:prototype).permit(:date, :thema, :text1,:text2,:text3,:text4,:text5).merge(user_id: current_user.id)
  end
end