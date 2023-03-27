class PowersController < ApplicationController
  before_action :set_power, only: [:show, :update]

  # GET /powers
  def index
    @powers = Power.all

    respond_to do |format|
      format.json { render json: @powers.as_json(except: [:created_at, :updated_at]) }
    end
  end

  # GET /powers/1
  def show
    if @power
      respond_to do |format|
        format.json { render json: @power.as_json(except: [:created_at, :updated_at]) }
      end
    else
      respond_to do |format|
        format.json { render json: { error: 'Power not found' }, status: :not_found }
      end
    end
  end
  

  # POST /powers
  def create
    @power = Power.new(power_params)

    if @power.save
      respond_to do |format|
        format.json { render json: @power, status: :created }
      end
    else
      respond_to do |format|
        format.json { render json: @power.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powers/1
  def update
    if @power.update(power_params)
      respond_to do |format|
        format.json { render json: @power }
      end
    else
      respond_to do |format|
        format.json { render json: @power.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power
      @power = Power.find_by(id: params[:id])
      unless @power
        respond_to do |format|
          format.json { render json: { error: 'Power not found' }, status: :not_found }
        end
      end
    end
    
    # Only allow a list of trusted parameters through.
    def power_params
      params.require(:power).permit(:id, :name)
    end
    
end
