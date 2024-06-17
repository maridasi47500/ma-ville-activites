class CorepresentantsController < ApplicationController
  before_action :set_corepresentant, only: %i[ show edit update destroy ]
  protect_from_forgery except: [:create]


  # GET /corepresentants or /corepresentants.json
  def index
    @corepresentants = Corepresentant.all
  end

  # GET /corepresentants/1 or /corepresentants/1.json
  def show
  end

  # GET /corepresentants/new
  def new
    @corepresentant = Corepresentant.new
  end

  # GET /corepresentants/1/edit
  def edit
  end

  # POST /corepresentants or /corepresentants.json
  def create
    @corepresentant = Corepresentant.new(corepresentant_params)

    respond_to do |format|
      if @corepresentant.save
        format.html { redirect_to "/myuser/family",notice: "Corepresentant was successfully created." }
        format.json { render :show, status: :created, location: @corepresentant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @corepresentant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corepresentants/1 or /corepresentants/1.json
  def update
    respond_to do |format|
      if @corepresentant.update(corepresentant_params)
        format.html { redirect_to "/myuser/family", notice: "Corepresentant was successfully updated." }
        format.json { render :show, status: :ok, location: @corepresentant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @corepresentant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corepresentants/1 or /corepresentants/1.json
  def destroy
    @corepresentant.destroy

    respond_to do |format|
      format.html { redirect_to corepresentants_url, notice: "Corepresentant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corepresentant
      @corepresentant = Corepresentant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def corepresentant_params
      params.require(:corepresentant).permit(:user_id, :civilite, :nomdusage, :nomdefamille, :communnenaissance, :paysnaissance, :dptnaissance, :tel, :mobile, :email, :observations, :piecej,:type,:prenom)


    end
end
