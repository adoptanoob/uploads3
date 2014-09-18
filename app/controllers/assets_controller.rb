class AssetsController < ApplicationController
    def index
    @assets = Asset.all
  end

  def show
    @asset = Asset.find(params[:id])
  end

  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.create(asset_params)
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def update
    @asset = Asset.find(params[:id])
    if @asset.update_attributes(asset_params)
      redirect_to assets_url, notice: "Asset was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    redirect_to assets_url, notice: "Asset was successfully destroyed."
  end

    private

  def asset_params
    params.require(:asset).permit(:asset_url, :name)
  end
end
