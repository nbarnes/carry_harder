class ChassisController < ApplicationController
  before_action :set_chassi, only: [:show, :edit, :update, :destroy]

  # GET /chassis
  def index
    @chassis = Chassi.all
  end

  # GET /chassis/1
  def show
  end

  # GET /chassis/new
  def new
    @chassi = Chassi.new
  end

  # GET /chassis/1/edit
  def edit
  end

  # POST /chassis
  def create
    @chassi = Chassi.new(chassi_params)

    if @chassi.save
      redirect_to @chassi, notice: 'Chassi was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /chassis/1
  def update
    if @chassi.update(chassi_params)
      redirect_to @chassi, notice: 'Chassi was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /chassis/1
  def destroy
    @chassi.destroy
    redirect_to chassis_url, notice: 'Chassi was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chassi
      @chassi = Chassi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def chassi_params
      params[:chassi]
    end
end
