class Api::V1::AcquisitionDevelopmentMaintenancesController < ApplicationController
  before_action :set_acquisition_development_maintenance, only: [:show, :update, :destroy]

  # GET /acquisition_development_maintenances
  def index
    @acquisition_development_maintenances = AcquisitionDevelopmentMaintenance.all

    render json: @acquisition_development_maintenances
  end

  # GET /acquisition_development_maintenances/1
  def show
    render json: @acquisition_development_maintenance
  end

  # POST /acquisition_development_maintenances
  def create
    @acquisition_development_maintenance = AcquisitionDevelopmentMaintenance.new(acquisition_development_maintenance_params)

    if @acquisition_development_maintenance.save
      render json: @acquisition_development_maintenance, status: :created, location: @acquisition_development_maintenance
    else
      render json: @acquisition_development_maintenance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /acquisition_development_maintenances/1
  def update
    if @acquisition_development_maintenance.update(acquisition_development_maintenance_params)
      render json: @acquisition_development_maintenance
    else
      render json: @acquisition_development_maintenance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /acquisition_development_maintenances/1
  def destroy
    @acquisition_development_maintenance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acquisition_development_maintenance
      @acquisition_development_maintenance = AcquisitionDevelopmentMaintenance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acquisition_development_maintenance_params
      params.require(:acquisition_development_maintenance).permit(:policy, :environment, :functionality, :acceptance)
    end
end
