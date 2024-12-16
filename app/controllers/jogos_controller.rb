class JogosController < ApplicationController
  before_action :set_jogo, only: %i[ show edit update destroy ]

  # GET /jogos or /jogos.json
  def index
    @jogos = Jogo.all
  end

  # GET /jogos/1 or /jogos/1.json
  def show
  end

  # GET /jogos/new
  def new
    @jogo = Jogo.new
  end

  # GET /jogos/1/edit
  def edit
  end

  # POST /jogos or /jogos.json
  def create
    @jogo = Jogo.new(jogo_params)

    respond_to do |format|
      if @jogo.save
        format.html { redirect_to @jogo, notice: "Jogo was successfully created." }
        format.json { render :show, status: :created, location: @jogo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jogos/1 or /jogos/1.json
  def update
    respond_to do |format|
      if @jogo.update(jogo_params)
        format.html { redirect_to @jogo, notice: "Jogo was successfully updated." }
        format.json { render :show, status: :ok, location: @jogo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jogos/1 or /jogos/1.json
  def destroy
    @jogo.destroy!

    respond_to do |format|
      format.html { redirect_to jogos_path, status: :see_other, notice: "Jogo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jogo
      @jogo = Jogo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jogo_params
      params.require(:jogo).permit(:placar_visitante, :time_visitante, :placar_mandante, :time_mandante, :local)
    end
end
