require_dependency "autool_perusal/application_controller"

module AutoolPerusal
  class PerusalsController < ApplicationController
    before_action :set_perusal, only: [:show, :edit, :update, :destroy]

    # GET /perusals
    def index
      @perusals = Perusal.all
    end

    # GET /perusals/1
    def show
    end

    # GET /perusals/new
    def new
      @perusal = Perusal.new
    end

    # GET /perusals/1/edit
    def edit
    end

    # POST /perusals
    def create
      @perusal = Perusal.new(perusal_params)

      if @perusal.save
        redirect_to @perusal, notice: 'Perusal was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /perusals/1
    def update
      if @perusal.update(perusal_params)
        redirect_to @perusal, notice: 'Perusal was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /perusals/1
    def destroy
      @perusal.destroy
      redirect_to perusals_url, notice: 'Perusal was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_perusal
        @perusal = Perusal.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def perusal_params
        params.require(:perusal).permit(:title, :content)
      end
  end
end
