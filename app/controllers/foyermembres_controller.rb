class FoyermembresController < ApplicationController
  before_action :set_foyermembre, only: %i[ show edit update destroy ]
  protect_from_forgery except: [:create]


  # GET /foyermembres or /foyermembres.json
  def index
    @foyermembres = Foyermembre.all
  end

  # GET /foyermembres/1 or /foyermembres/1.json
  def show
  end

  # GET /foyermembres/new
  def new
    @foyermembre = Foyermembre.new
  end

  # GET /foyermembres/1/edit
  def edit
  end

  # POST /foyermembres or /foyermembres.json
  def create
    @foyermembre = Foyermembre.new(foyermembre_params)

    respond_to do |format|
      if @foyermembre.save
        format.html { redirect_to "/myuser/family", notice: "Foyermembre was successfully created." }
        format.json { render :show, status: :created, location: @foyermembre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foyermembre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foyermembres/1 or /foyermembres/1.json
  def update
    respond_to do |format|
      if @foyermembre.update(foyermembre_params)
        format.html { redirect_to "/myuser/family", notice: "Foyermembre was successfully updated." }
        format.json { render :show, status: :ok, location: @foyermembre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foyermembre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foyermembres/1 or /foyermembres/1.json
  def destroy
    @foyermembre.destroy

    respond_to do |format|
      format.html { redirect_to foyermembres_url, notice: "Foyermembre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foyermembre
      @foyermembre = Foyermembre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foyermembre_params
      params.require(:foyermembre).permit(:user_id, :civilite, :nomdusage, :nomdefamille, :communnenaissance, :paysnaissance, :dptnaissance, :tel, :mobile, :email, :observations, :piecej,:type,:prenom)

    end
end
