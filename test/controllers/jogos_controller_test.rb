require "test_helper"

class JogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jogo = jogos(:one)
  end

  test "should get index" do
    get jogos_url
    assert_response :success
  end

  test "should get new" do
    get new_jogo_url
    assert_response :success
  end

  test "should create jogo" do
    assert_difference("Jogo.count") do
      post jogos_url, params: { jogo: { local: @jogo.local, placar_mandante: @jogo.placar_mandante, placar_visitante: @jogo.placar_visitante, clube_mandante_id: @jogo.clube_mandante_id, clube_visitante_id: @jogo.clube_visitante_id } }
    end

    assert_redirected_to jogo_url(Jogo.last)
  end

  test "should show jogo" do
    get jogo_url(@jogo)
    assert_response :success
  end

  test "should get edit" do
    get edit_jogo_url(@jogo)
    assert_response :success
  end

  test "should update jogo" do
    patch jogo_url(@jogo), params: { jogo: { local: @jogo.local, placar_mandante: @jogo.placar_mandante, placar_visitante: @jogo.placar_visitante, clube_mandante_id: @jogo.clube_mandante_id, clube_visitante_id: @jogo.clube_visitante_id } }
    assert_redirected_to jogo_url(@jogo)
  end

  test "should destroy jogo" do
    assert_difference("Jogo.count", -1) do
      delete jogo_url(@jogo)
    end

    assert_redirected_to jogos_url
  end
end
