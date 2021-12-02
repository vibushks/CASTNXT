class GformsController < ApplicationController
  before_action :set_gform, only: %i[ show edit update destroy ]

  # GET /gforms or /gforms.json
  def profile
    @gforms = Gform.all
  end
  
  def index
    @gforms = Gform.all
  end
  
  def admin
    @gforms = Gform.all
  end

  # GET /gforms/1 or /gforms/1.json
  def show
  end

  # GET /gforms/new
  def new
    @gform = Gform.new
  end

  # GET /gforms/1/preview
  def preview
    @gform = Gform.find(params[:id])
  end
  
  def edit_form
    @gform = Gform.find(params[:id])
  end
  
  def view_responses
    @gform = Gform.find(params[:id])
  end

  # GET /gforms/1/edit
  def edit
  end

  # POST /gforms or /gforms.json
  def create
    @gform = Gform.new(gform_params)

    respond_to do |format|
      if @gform.save
        format.html { redirect_to @gform, notice: "Gform was successfully created." }
        format.json { render :show, status: :created, location: @gform }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gforms/1 or /gforms/1.json
  def update
    respond_to do |format|
      if @gform.update(gform_params)
        format.html { redirect_to @gform, notice: "Gform was successfully updated." }
        format.json { render :show, status: :ok, location: @gform }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gforms/1 or /gforms/1.json
  def destroy
    @gform.destroy
    respond_to do |format|
      format.html { redirect_to gforms_url, notice: "Gform was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gform
      @gform = Gform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gform_params
      params.require(:gform).permit(:name, :view_link, :edit_link, :sheets_link)
    end
end
