class MussitationsController < ApplicationController
before_action :set_mussitation, only: [:edit, :update, :destroy]
  def index
    @mussitation = Mussitation.all
  end
  def new
    @mussitation = Mussitation.new
  end
  def create
    @mussitation = Mussitation.new(mussitation_params)
    if params[:back]
      render :new
    else
      if @mussitation.save
        redirect_to mussitations_path, notice: "投稿しました！"
      else
        render :new
      end
    end
  end
  def show
    @mussitation = Mussitation.find(params[:id])
  end
  def edit
  end
  def update
    if @mussitation.update(mussitation_params)
      redirect_to mussitations_path, notice: "投稿を編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @mussitation.destroy
    redirect_to mussitation_path, notice:"投稿を削除しました！"
  end
  def confirm
    @mussitation = Mussitation.new(mussitation_params)
    render :new if @mussitation.invalid?
  end

  private
  def mussitation_params
    params.require(:mussitation).permit(:content)
  end
  def set_mussitation
    @mussitation = Mussitation.find(params[:id])
  end
end
