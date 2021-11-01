class Api::V1::CompaniesController < ApplicationController
    before_action :set_empresa, only: [:show, :update, :destroy]
    before_action :set_models, only: [:show, :index]

    def index
        @companies = Company.all();
        render json: @companies.order(:id) , include: set_models
    end

    def show
        render json: @empresa, include: set_models
    end

    def create
        @empresa = Company.new(empresa_params)
        if @empresa.save
            render json: @empresa, status: :created
        else
            render json: @empresa.errors, status: :unprocessable_entity         
        end
    end

    def update
        if @empresa.update(empresa_params)
            render json: @empresa
        else
            render json: @empresa.errors, status: :unprocessable_entity         
        end
    end

    def destroy
        empresa.destroy
        render json: {'mensaje':'Elemento borrados exitosamente'}
    end

    private

    def set_empresa
        @empresa = Company.find(params[:id])
    end

    def set_models
        @models = [:policy,:telecommunication_security, :acquisition_development_maintenance]
    end
    
    def empresa_params
        params.require(:company).permit(:name,:description)
    end
end
