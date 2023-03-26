class HeroesController < ApplicationController
    def index
      @heroes = Hero.all
      respond_to do |format|
        format.json { render json: @heroes }
      end
    end
    
    def show
      @hero = Hero.find(params[:id])
      respond_to do |format|
        format.json { render json: @hero }
      end
    end
    
    def create
      @hero = Hero.new(hero_params)
      if @hero.save
        respond_to do |format|
          format.json { render json: @hero, status: :created }
        end
      else
        respond_to do |format|
          format.json { render json: @hero.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def update
      @hero = Hero.find(params[:id])
      if @hero.update(hero_params)
        respond_to do |format|
          format.json { render json: @hero, status: :ok }
        end
      else
        respond_to do |format|
          format.json { render json: @hero.errors, status: :unprocessable_entity }
        end
      end
    end
    
    def destroy
      @hero = Hero.find(params[:id])
      @hero.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end
    
    private
    
    def hero_params
      params.require(:hero).permit(:name, :description, :superpower_id)
    end
  end