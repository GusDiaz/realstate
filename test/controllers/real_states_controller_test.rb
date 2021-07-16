require "test_helper"

class RealStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @real_state = real_states(:one)
  end

  test "should get index" do
    get real_states_url, as: :json
    assert_response :success
  end

  test "should create real_state" do
    assert_difference('RealState.count') do
      post real_states_url, params: { real_state: { bathrooms: @real_state.bathrooms, city: @real_state.city, comments: @real_state.comments, country: @real_state.country, external_number: @real_state.external_number, internal_number: @real_state.internal_number, name: @real_state.name, neighborhood: @real_state.neighborhood, real_state_type: @real_state.real_state_type, rooms: @real_state.rooms, street: @real_state.street } }, as: :json
    end

    assert_response 201
  end

  test "should show real_state" do
    get real_state_url(@real_state), as: :json
    assert_response :success
  end

  test "should update real_state" do
    patch real_state_url(@real_state), params: { real_state: { bathrooms: @real_state.bathrooms, city: @real_state.city, comments: @real_state.comments, country: @real_state.country, external_number: @real_state.external_number, internal_number: @real_state.internal_number, name: @real_state.name, neighborhood: @real_state.neighborhood, real_state_type: @real_state.real_state_type, rooms: @real_state.rooms, street: @real_state.street } }, as: :json
    assert_response 200
  end

  test "should destroy real_state" do
    assert_difference('RealState.count', -1) do
      delete real_state_url(@real_state), as: :json
    end

    assert_response 204
  end
end
