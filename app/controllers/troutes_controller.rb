class TroutesController < ApplicationController
  before_action :set_troute, only: [:show, :edit, :update, :destroy]

  # GET /troutes
  # GET /troutes.json
  def index
    @troutes = Troute.all
  end

  # GET /troutes/1
  # GET /troutes/1.json
  def show
  end

  # GET /troutes/new
  def new
    @troute = Troute.new
  end

  # GET /troutes/1/edit
  def edit
  end

  # POST /troutes
  # POST /troutes.json
  def create
    @troute = Troute.new(troute_params)

    respond_to do |format|
      if @troute.save
        format.html { redirect_to @troute, notice: 'Troute was successfully created.' }
        format.json { render :show, status: :created, location: @troute }
      else
        format.html { render :new }
        format.json { render json: @troute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /troutes/1
  # PATCH/PUT /troutes/1.json
  def update
    respond_to do |format|
      if @troute.update(troute_params)
        format.html { redirect_to @troute, notice: 'Troute was successfully updated.' }
        format.json { render :show, status: :ok, location: @troute }
      else
        format.html { render :edit }
        format.json { render json: @troute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /troutes/1
  # DELETE /troutes/1.json
  def destroy
    @troute.destroy
    respond_to do |format|
      format.html { redirect_to troutes_url, notice: 'Troute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_troute
      @troute = Troute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def troute_params
      params.require(:troute).permit(:name, :describe, :price, :city_id)
    end
end
