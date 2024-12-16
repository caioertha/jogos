require "application_system_test_case"

class JogosTest < ApplicationSystemTestCase
  setup do
    @jogo = jogos(:one)
  end

  test "visiting the index" do
    visit jogos_url
    assert_selector "h1", text: "Jogos"
  end

  test "should create jogo" do
    visit jogos_url
    click_on "New jogo"

    fill_in "Local", with: @jogo.local
    fill_in "Placar mandante", with: @jogo.placar_mandante
    fill_in "Placar visitante", with: @jogo.placar_visitante
    fill_in "Time mandante", with: @jogo.time_mandante
    fill_in "Time visitante", with: @jogo.time_visitante
    click_on "Create Jogo"

    assert_text "Jogo was successfully created"
    click_on "Back"
  end

  test "should update Jogo" do
    visit jogo_url(@jogo)
    click_on "Edit this jogo", match: :first

    fill_in "Local", with: @jogo.local
    fill_in "Placar mandante", with: @jogo.placar_mandante
    fill_in "Placar visitante", with: @jogo.placar_visitante
    fill_in "Time mandante", with: @jogo.time_mandante
    fill_in "Time visitante", with: @jogo.time_visitante
    click_on "Update Jogo"

    assert_text "Jogo was successfully updated"
    click_on "Back"
  end

  test "should destroy Jogo" do
    visit jogo_url(@jogo)
    click_on "Destroy this jogo", match: :first

    assert_text "Jogo was successfully destroyed"
  end
end
