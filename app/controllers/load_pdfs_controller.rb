class LoadPdfsController < ApplicationController
  before_action :set_load_pdf, only: [:show, :edit, :update, :destroy]

  # GET /load_pdfs
  # GET /load_pdfs.json
  def index
    @load_pdfs = LoadPdf.all
  end

  # GET /load_pdfs/1
  # GET /load_pdfs/1.json
  def show

  end

  # GET /load_pdfs/new
  def new
    @load = Load.find(params[:load_id]) 
    @load_pdf = @load.load_pdfs.new
  end


  def edit
  end

  

  def create
    @load = Load.find(params[:load_id])  
    @load_pdf = @load.load_pdfs.build(load_pdf_params)
    LoadMailer.active_load(@load).deliver_later 
    redirect_to root_path

  end

  # PATCH/PUT /load_pdfs/1
  # PATCH/PUT /load_pdfs/1.json
  def update
    respond_to do |format|
      if @load_pdf.update(load_pdf_params)
        format.html { redirect_to @load_pdf, notice: 'Load pdf was successfully updated.' }
        format.json { render :show, status: :ok, location: @load_pdf }
      else
        format.html { render :edit }
        format.json { render json: @load_pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /load_pdfs/1
  # DELETE /load_pdfs/1.json
  def destroy
    @load_pdf.destroy
    respond_to do |format|
      format.html { redirect_to load_pdfs_url, notice: 'Load pdf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_load_pdf
      @load_pdf = LoadPdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def load_pdf_params
      params.require(:load_pdf).permit(:html, :load_id)
    end
end
