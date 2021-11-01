require "test_helper"

class TelecommunicationSecuritiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @telecommunication_security = telecommunication_securities(:one)
  end

  test "should get index" do
    get telecommunication_securities_url, as: :json
    assert_response :success
  end

  test "should create telecommunication_security" do
    assert_difference('TelecommunicationSecurity.count') do
      post telecommunication_securities_url, params: { telecommunication_security: { confidentiality: @telecommunication_security.confidentiality, exchange: @telecommunication_security.exchange, mesage_service: @telecommunication_security.mesage_service, network_controls: @telecommunication_security.network_controls, procedures: @telecommunication_security.procedures, security_mechanisms: @telecommunication_security.security_mechanisms, segregation_networks: @telecommunication_security.segregation_networks } }, as: :json
    end

    assert_response 201
  end

  test "should show telecommunication_security" do
    get telecommunication_security_url(@telecommunication_security), as: :json
    assert_response :success
  end

  test "should update telecommunication_security" do
    patch telecommunication_security_url(@telecommunication_security), params: { telecommunication_security: { confidentiality: @telecommunication_security.confidentiality, exchange: @telecommunication_security.exchange, mesage_service: @telecommunication_security.mesage_service, network_controls: @telecommunication_security.network_controls, procedures: @telecommunication_security.procedures, security_mechanisms: @telecommunication_security.security_mechanisms, segregation_networks: @telecommunication_security.segregation_networks } }, as: :json
    assert_response 200
  end

  test "should destroy telecommunication_security" do
    assert_difference('TelecommunicationSecurity.count', -1) do
      delete telecommunication_security_url(@telecommunication_security), as: :json
    end

    assert_response 204
  end
end
