class SharesController < ApplicationController
  def new
    @share = Share.new
  end

  def create
    shareholder = Shareholder.find(params[:shareholder_id])
    @share = Share.new(shareholder_id: shareholder.id)
    if @share.save
      redirect_to new_share_path, notice: 'Your shares have been selected!'
    else
      render :new
    end
  end

  private

  # strong params
  def share_params
    params.require(:share).permit(
      :shareholder_id,
      :share_type_id
    )
  end
end
