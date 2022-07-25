class ReservationtablesController < ApplicationController
  before_action :set_reservationtable, only: %i[ show edit update destroy ]

  # GET /reservationtables or /reservationtables.json
  def index
    @reservationtables = Reservationtable.all
  end

  # GET /reservationtables/1 or /reservationtables/1.json
  def show
  end

  # GET /reservationtables/new
  def new
    @reservationtable = Reservationtable.new
  end

  # GET /reservationtables/1/edit
  def edit
  end

  # POST /reservationtables or /reservationtables.json
  def create
    @reservationtable = Reservationtable.new(reservationtable_params)

    respond_to do |format|
      if @reservationtable.save
        format.html { redirect_to reservationtable_url(@reservationtable), notice: "Reservationtable was successfully created." }
        format.json { render :show, status: :created, location: @reservationtable }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservationtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservationtables/1 or /reservationtables/1.json
  def update
    respond_to do |format|
      if @reservationtable.update(reservationtable_params)
        format.html { redirect_to reservationtable_url(@reservationtable), notice: "Reservationtable was successfully updated." }
        format.json { render :show, status: :ok, location: @reservationtable }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservationtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservationtables/1 or /reservationtables/1.json
  def destroy
    @reservationtable.destroy

    respond_to do |format|
      format.html { redirect_to reservationtables_url, notice: "Reservationtable was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservationtable
      @reservationtable = Reservationtable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservationtable_params
      params.require(:reservationtable).permit(:people, :name, :phone, :rsvptime)
    end
end
