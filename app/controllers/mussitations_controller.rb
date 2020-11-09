class MussitationsController < ApplicationController
before_action :set_mussitation, only: [:edit, :update]
  def index
    @mussitation = Mussitation.all
  end
  def new
    @mussitation = Mussitation.new
  end
  def create
    @mussitation = Mussitation.new(mussitation_params)
    if @mussitation.save
      redirect_to mussitations_path, notice: "投稿しました！"
    else
      render :new
    end
  end
  def edit
    #@mussitation = Mussitation.find(params[:id])
  end
  def update
    #@mussitation = Mussitation.find(params[:id])
    if @mussitation.update(mussitation_params)
      redirect_to mussitations_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end
  private
  def mussitation_params
    params.require(:mussitation).permit(:content)
  end
  def set_mussitation
    @mussitation = Mussitation.find(params[:id])
  end
end
