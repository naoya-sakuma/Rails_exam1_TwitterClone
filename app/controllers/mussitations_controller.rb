class MussitationsController < ApplicationController
  def index
  end
  def new
    @mussitation = Mussitation.new
  end
  def create
    Mussitation.create(content: params[:mussitation][:content])
    redirect_to new_mussitation_path
  end
end
