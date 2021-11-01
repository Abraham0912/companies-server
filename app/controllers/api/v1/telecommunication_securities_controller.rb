class Api::V1::TelecommunicationSecuritiesController < ApplicationController
  before_action :set_telecommunication_security, only: [:show, :update, :destroy]

  # GET /telecommunication_securities
  def index
    @telecommunication_securities = TelecommunicationSecurity.all

    render json: @telecommunication_securities
  end

  # GET /telecommunication_securities/1
  def show
    render json: @telecommunication_security
  end

  # POST /telecommunication_securities
  def create
    @telecommunication_security = TelecommunicationSecurity.new(telecommunication_security_params)

    if @telecommunication_security.save
      render json: @telecommunication_security, status: :created, location: @telecommunication_security
    else
      render json: @telecommunication_security.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /telecommunication_securities/1
  def update
    if @telecommunication_security.update(telecommunication_security_params)
      render json: @telecommunication_security
    else
      render json: @telecommunication_security.errors, status: :unprocessable_entity
    end
  end

  # DELETE /telecommunication_securities/1
  def destroy
    @telecommunication_security.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telecommunication_security
      @telecommunication_security = TelecommunicationSecurity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def telecommunication_security_params
      params.require(:telecommunication_security).permit(:network_controls, :security_mechanisms, :segregation_networks, :procedures, :exchange, :mesage_service, :confidentiality)
    end
end
