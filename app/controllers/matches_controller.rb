class MatchesController < ApplicationController
  before_action :set_match, only: [:show]

  def index
    @matches = Match.all
  end

  def show
  end

  def new
    @match = Match.new
    @match.screenshots.build
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to @match, notice: 'Match was successfully created.'
    else
      render :new
    end
  end

  private
    def set_match
      @match = Match.find(params[:id])
    end

    # Strong params
    def match_params
      params.require(:match).permit(screenshots_attributes: [:image])
    end

end
