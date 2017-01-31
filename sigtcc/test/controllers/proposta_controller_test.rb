require 'test_helper'

class PropostaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propostum = proposta(:one)
  end

  test "should get index" do
    get proposta_url
    assert_response :success
  end

  test "should get new" do
    get new_propostum_url
    assert_response :success
  end

  test "should create propostum" do
    assert_difference('Propostum.count') do
      post proposta_url, params: { propostum: { orientador: @propostum.orientador, tipoTcc: @propostum.tipoTcc, titulo: @propostum.titulo } }
    end

    assert_redirected_to propostum_url(Propostum.last)
  end

  test "should show propostum" do
    get propostum_url(@propostum)
    assert_response :success
  end

  test "should get edit" do
    get edit_propostum_url(@propostum)
    assert_response :success
  end

  test "should update propostum" do
    patch propostum_url(@propostum), params: { propostum: { orientador: @propostum.orientador, tipoTcc: @propostum.tipoTcc, titulo: @propostum.titulo } }
    assert_redirected_to propostum_url(@propostum)
  end

  test "should destroy propostum" do
    assert_difference('Propostum.count', -1) do
      delete propostum_url(@propostum)
    end

    assert_redirected_to proposta_url
  end
end
