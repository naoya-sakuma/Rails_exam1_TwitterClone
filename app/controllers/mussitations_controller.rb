class MussitationsController < ApplicationController
  def index
    @mussitation = Mussitation.all
  end
  def new
    @mussitation = Mussitation.new
  end
  def create
    Mussitation.create(mussitation_params)
    redirect_to new_mussitation_path
  end

  private
  def mussitation_params
    params.require(:mussitation).permit(:content)
  end
end
