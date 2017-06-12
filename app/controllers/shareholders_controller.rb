class ShareholdersController < ApplicationController
  def new
    @shareholder = Shareholder.new
  end

  def create
    @shareholder = Shareholder.new(shareholder_params)
    if @shareholder.save
      redirect_to new_shareholder_path
    else
      render :new
    end
  end

  private

  # strong params
  def shareholder_params
    params.require(:shareholder).permit(
      :first_name,
      :last_name,
      :email,
      :phone
    )
  end
end
