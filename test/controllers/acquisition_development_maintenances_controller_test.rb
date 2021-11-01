require "test_helper"

class AcquisitionDevelopmentMaintenancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acquisition_development_maintenance = acquisition_development_maintenances(:one)
  end

  test "should get index" do
    get acquisition_development_maintenances_url, as: :json
    assert_response :success
  end

  test "should create acquisition_development_maintenance" do
    assert_difference('AcquisitionDevelopmentMaintenance.count') do
      post acquisition_development_maintenances_url, params: { acquisition_development_maintenance: { acceptance: @acquisition_development_maintenance.acceptance, environment: @acquisition_development_maintenance.environment, functionality: @acquisition_development_maintenance.functionality, policy: @acquisition_development_maintenance.policy } }, as: :json
    end

    assert_response 201
  end

  test "should show acquisition_development_maintenance" do
    get acquisition_development_maintenance_url(@acquisition_development_maintenance), as: :json
    assert_response :success
  end

  test "should update acquisition_development_maintenance" do
    patch acquisition_development_maintenance_url(@acquisition_development_maintenance), params: { acquisition_development_maintenance: { acceptance: @acquisition_development_maintenance.acceptance, environment: @acquisition_development_maintenance.environment, functionality: @acquisition_development_maintenance.functionality, policy: @acquisition_development_maintenance.policy } }, as: :json
    assert_response 200
  end

  test "should destroy acquisition_development_maintenance" do
    assert_difference('AcquisitionDevelopmentMaintenance.count', -1) do
      delete acquisition_development_maintenance_url(@acquisition_development_maintenance), as: :json
    end

    assert_response 204
  end
end
