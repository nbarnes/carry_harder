class ScreenshotsController < ApplicationController
  before_action :set_screenshot, only: [:show, :edit, :update, :destroy]

  def index
    @screenshots = Screenshot.all
  end

  def show
  end

  def new
    @screenshot = Screenshot.new
  end

  def edit
  end

  def create
    @screenshot = Screenshot.new(screenshot_params)

    if @screenshot.save
      redirect_to @screenshot, notice: 'Screenshot was successfully created.'
    else
      render :new
    end
  end

  def update
    if @screenshot.update(screenshot_params)
      redirect_to @screenshot, notice: 'Screenshot was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @screenshot.destroy
    redirect_to screenshots_url, notice: 'Screenshot was successfully destroyed.'
  end

  private

    def set_screenshot
      @screenshot = Screenshot.find(params[:id])
    end

    # Strong params
    def screenshot_params
      params.require(:screenshot).permit(:image)
    end

end
