class LeistungsController < ApplicationController
  before_action :set_leistung, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /leistungs
  # GET /leistungs.json
  def index
    @leistungs = Leistung.all
  end

  # GET /leistungs/1
  # GET /leistungs/1.json
  def show
  end

  # GET /leistungs/new
  def new
    @leistung = Leistung.new
  end

  # GET /leistungs/1/edit
  def edit
  end

  # POST /leistungs
  # POST /leistungs.json
  def create
    @leistung = Leistung.new(leistung_params)

    respond_to do |format|
      if @leistung.save
        format.html { redirect_to @leistung, notice: 'Leistung was successfully created.' }
        format.json { render :show, status: :created, location: @leistung }
      else
        format.html { render :new }
        format.json { render json: @leistung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leistungs/1
  # PATCH/PUT /leistungs/1.json
  def update
    respond_to do |format|
      if @leistung.update(leistung_params)
        format.html { redirect_to @leistung, notice: 'Leistung was successfully updated.' }
        format.json { render :show, status: :ok, location: @leistung }
      else
        format.html { render :edit }
        format.json { render json: @leistung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leistungs/1
  # DELETE /leistungs/1.json
  def destroy
    @leistung.destroy
    respond_to do |format|
      format.html { redirect_to leistungs_url, notice: 'Leistung was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leistung
      @leistung = Leistung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leistung_params
      params.require(:leistung).permit(:name)
    end
end
