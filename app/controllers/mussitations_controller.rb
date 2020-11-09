class MussitationsController < ApplicationController
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
  private
  def mussitation_params
    params.require(:mussitation).permit(:content)
  end
end
