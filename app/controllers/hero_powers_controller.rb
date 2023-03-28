class HeroPowersController < ApplicationController
    before_action :set_hero_power, only: [:show, :update, :destroy]
  
    # GET /hero_powers
    def index
      @hero_powers = HeroPower.all
  
      respond_to do |format|
        format.json { render json: @hero_powers }
      end
    end
  
    # GET /hero_powers/1
    def show
      respond_to do |format|
        format.json { render json: @hero_power }
      end
    end
  
    # POST /hero_powers
    def create
      @hero_power = HeroPower.new(hero_power_params)
  
      if @hero_power.save
        respond_to do |format|
          format.json { render json: @hero_power, status: :created }
        end
      else
        respond_to do |format|
          format.json { render json: @hero_power.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /hero_powers/1
    def update
      if @hero_power.update(hero_power_params)
        respond_to do |format|
          format.json { render json: @hero_power }
        end
      else
        respond_to do |format|
          format.json { render json: @hero_power.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /hero_powers/1
    def destroy
      @hero_power.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_hero_power
      @hero_power = HeroPower.find_by(id: params[:id])
      unless @hero_power
        render json: { errors: ["HeroPower not found"] }, status: :not_found
      end
    end
    
  
    # Only allow a trusted parameter "white list" through.
    def hero_power_params
      params.require(:hero_power).permit(:hero_id, :power_id, :strength)
    end
  end
  