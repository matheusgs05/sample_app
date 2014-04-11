class RequisitometrologicosController < ApplicationController
  before_action :set_requisitometrologico, only: [:show, :edit, :update, :destroy]

  # GET /requisitometrologicos
  # GET /requisitometrologicos.json
  def index
    @requisitometrologicos = Requisitometrologico.all
  end

  # GET /requisitometrologicos/1
  # GET /requisitometrologicos/1.json
  def show
    @requisitometrologico = Requisitometrologico.find(params[:id])
    @data = @requisitometrologico.binary.data
    send_data(@data, :type => @upload.content_type, :file_name => @upload.filename, :disposition => 'download')
  end

  # GET /requisitometrologicos/new
  def new
    @requisitometrologico = Requisitometrologico.new
  end

  # GET /requisitometrologicos/1/edit
  def edit
  end

  # POST /requisitometrologicos
  # POST /requisitometrologicos.json
  def create
    @requisitometrologico = Requisitometrologico.new(requisitometrologico_params)

    respond_to do |format|
      if @requisitometrologico.save
        format.html { redirect_to @requisitometrologico, notice: 'Requisitometrologico was successfully created.' }
        format.json { render action: 'new', status: :created, location: @requisitometrologico }
      else
        format.html { render action: 'new' }
        format.json { render json: @requisitometrologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisitometrologicos/1
  # PATCH/PUT /requisitometrologicos/1.json
  def update
    respond_to do |format|
      if @requisitometrologico.update(requisitometrologico_params)
        format.html { redirect_to @requisitometrologico, notice: 'Requisitometrologico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @requisitometrologico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisitometrologicos/1
  # DELETE /requisitometrologicos/1.json
  def destroy
    @requisitometrologico.destroy
    respond_to do |format|
      format.html { redirect_to requisitometrologicos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisitometrologico
      @requisitometrologico = Requisitometrologico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requisitometrologico_params
      params.require(:requisitometrologico).permit(:nome_do_requisito, :valor_do_requisito, :file_data)
    end
end
