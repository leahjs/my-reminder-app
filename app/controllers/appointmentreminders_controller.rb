class AppointmentremindersController < ApplicationController
  before_action :set_appointmentreminder, only: [:show, :edit, :update, :destroy]

  # GET /appointmentreminders
  # GET /appointmentreminders.json
  def index
    @appointmentreminders = Appointmentreminder.all
  end

  # GET /appointmentreminders/1
  # GET /appointmentreminders/1.json
  def show
  end

  # GET /appointmentreminders/new
  def new
    @appointmentreminder = Appointmentreminder.new
  end

  # GET /appointmentreminders/1/edit
  def edit
  end

  # POST /appointmentreminders
  # POST /appointmentreminders.json
  def create
    @appointmentreminder = Appointmentreminder.new(appointmentreminder_params)

    respond_to do |format|
      if @appointmentreminder.save
        format.html { redirect_to @appointmentreminder, notice: 'Appointmentreminder was successfully created.' }
        format.json { render :show, status: :created, location: @appointmentreminder }
      else
        format.html { render :new }
        format.json { render json: @appointmentreminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointmentreminders/1
  # PATCH/PUT /appointmentreminders/1.json
  def update
    respond_to do |format|
      if @appointmentreminder.update(appointmentreminder_params)
        format.html { redirect_to @appointmentreminder, notice: 'Appointmentreminder was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointmentreminder }
      else
        format.html { render :edit }
        format.json { render json: @appointmentreminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointmentreminders/1
  # DELETE /appointmentreminders/1.json
  def destroy
    @appointmentreminder.destroy
    respond_to do |format|
      format.html { redirect_to appointmentreminders_url, notice: 'Appointmentreminder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointmentreminder
      @appointmentreminder = Appointmentreminder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointmentreminder_params
      params[:appointmentreminder]
    end
end
