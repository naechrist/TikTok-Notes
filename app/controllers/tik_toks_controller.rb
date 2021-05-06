class TikToksController < ApplicationController
  before_action :set_tik_tok, only: %i[ show edit update destroy ]
  before_action :log_in_to_edit, only: [:new, :create, :edit, :update, :destroy]
  
  # GET /tik_toks or /tik_toks.json
  def index
    @tik_toks = TikTok.all
  end

  # GET /tik_toks/1 or /tik_toks/1.json
  def show
  end

  # GET /tik_toks/new
  def new
    @tik_tok = TikTok.new
  end

  # GET /tik_toks/1/edit
  def edit
  end

  # POST /tik_toks or /tik_toks.json
  def create
    @tik_tok = TikTok.new(tik_tok_params)

    respond_to do |format|
      if @tik_tok.save
        format.html { redirect_to @tik_tok, notice: "Video was successfully added." }
        format.json { render :show, status: :created, location: @tik_tok }
      else
        format.html { render :new }
        format.json { render json: @tik_tok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tik_toks/1 or /tik_toks/1.json
  def update
    respond_to do |format|
      if @tik_tok.update(tik_tok_params)
        format.html { redirect_to @tik_tok, notice: "Video was successfully updated." }
        format.json { render :show, status: :ok, location: @tik_tok }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tik_tok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tik_toks/1 or /tik_toks/1.json
  def destroy
    @tik_tok.destroy
    respond_to do |format|
      format.html { redirect_to tik_toks_url, notice: "Video was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tik_tok
      @tik_tok = TikTok.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tik_tok_params
      params.require(:tik_tok).permit(:description, :link, :user_id, :category_id, :favorite)
    end

    def log_in_to_edit
      if !logged_in?
        redirect_to login_path
      end
    end
end
