class Api::V1::PoliciesController < ApplicationController
  before_action :set_policy, only: [:show,:update,:destroy]
  def index
    @policies = Policy.all();
    render json: @policies, include:set_models_policy
  end

  def show
    render json: @policy, include:set_models_policy
  end

  def create
    @policy = Policy.new(params_policy)
    if(@policy.save)
    render json: @policy,status: :created
    else
      render json:@policy.errors, status: :unprocessable_entity 
    end
  end

  def update
    if(@policy.update(params_policy))
      render json:@policy
    else
      render json: @policy.errors
    end
  end

  def destroy
    if(@policy.destroy)
      render json: {'mensaje':'Registro eliminado con exito'}
    else
      render json: @policy.errors
    end
  end

  private
  def set_policy
    @policy = Policy.find(params[:id])
  end

  def set_models_policy
    @models = [:company]
  end


  def params_policy
    params.require(:policy).permit(:policy_set,:policy_review,:company_id)
  end
end
