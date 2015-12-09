class DataSheetsController < ApplicationController
  before_action :set_data_sheet, only: [:show, :edit, :update, :destroy]

  # GET /data_sheets
  # GET /data_sheets.json
  def index
    @data_sheets = DataSheet.all
  end

  # GET /data_sheets/1
  # GET /data_sheets/1.json
  def show
  end

  # GET /data_sheets/new
  def new
    @data_sheet = DataSheet.new
  end

  # GET /data_sheets/1/edit
  def edit
  end

  # POST /data_sheets
  # POST /data_sheets.json
  def create
    @data_sheet = DataSheet.new(data_sheet_params)

    respond_to do |format|
      if @data_sheet.save
        format.html { redirect_to @data_sheet, notice: 'Data sheet was successfully created.' }
        format.json { render :show, status: :created, location: @data_sheet }
      else
        format.html { render :new }
        format.json { render json: @data_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_sheets/1
  # PATCH/PUT /data_sheets/1.json
  def update
    respond_to do |format|
      if @data_sheet.update(data_sheet_params)
        format.html { redirect_to @data_sheet, notice: 'Data sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_sheet }
      else
        format.html { render :edit }
        format.json { render json: @data_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_sheets/1
  # DELETE /data_sheets/1.json
  def destroy
    @data_sheet.destroy
    respond_to do |format|
      format.html { redirect_to data_sheets_url, notice: 'Data sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_sheet
      @data_sheet = DataSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_sheet_params
      params.require(:data_sheet).permit(:start_date, :hz)
    end
end
