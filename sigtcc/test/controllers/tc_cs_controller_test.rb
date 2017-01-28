require 'test_helper'

class TcCsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tcc = tccs(:one)
  end

  test "should get index" do
    get tccs_url
    assert_response :success
  end

  test "should get new" do
    get new_tcc_url
    assert_response :success
  end

  test "should create tcc" do
    assert_difference('Tcc.count') do
      post tccs_url, params: { tcc: { periodo: @tcc.periodo, titulo: @tcc.titulo } }
    end

    assert_redirected_to tcc_url(Tcc.last)
  end

  test "should show tcc" do
    get tcc_url(@tcc)
    assert_response :success
  end

  test "should get edit" do
    get edit_tcc_url(@tcc)
    assert_response :success
  end

  test "should update tcc" do
    patch tcc_url(@tcc), params: { tcc: { periodo: @tcc.periodo, titulo: @tcc.titulo } }
    assert_redirected_to tcc_url(@tcc)
  end

  test "should destroy tcc" do
    assert_difference('Tcc.count', -1) do
      delete tcc_url(@tcc)
    end

    assert_redirected_to tccs_url
  end
end
