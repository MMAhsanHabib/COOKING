class MenuesController < ApplicationController
  skip_before_action :authorize, only: [:index, :show]
  before_action :set_menue, only: [:show, :edit, :update, :destroy]
  

  # GET /menues
  # GET /menues.json
  def index
    @menues = Menue.all
  end

  # GET /menues/1
  # GET /menues/1.json
  def show
  end

  # GET /menues/new
  def new
    @menue = Menue.new
  end

  # GET /menues/1/edit
  def edit
  end

  # POST /menues
  # POST /menues.json
  def create
    @menue = Menue.new(menue_params)

    respond_to do |format|
      if @menue.save
        format.html { redirect_to @menue, notice: 'Menue was successfully created.' }
        format.json { render :show, status: :created, location: @menue }
      else
        format.html { render :new }
        format.json { render json: @menue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menues/1
  # PATCH/PUT /menues/1.json
  def update
    respond_to do |format|
      if @menue.update(menue_params)
        format.html { redirect_to @menue, notice: 'Menue was successfully updated.' }
        format.json { render :show, status: :ok, location: @menue }
      else
        format.html { render :edit }
        format.json { render json: @menue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menues/1
  # DELETE /menues/1.json
  def destroy
    @menue.destroy
    respond_to do |format|
      format.html { redirect_to menues_url, notice: 'Menue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menue
      @menue = Menue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def menue_params
      params.require(:menue).permit(:name, :ingridients, :description, :image_url)
    end
end