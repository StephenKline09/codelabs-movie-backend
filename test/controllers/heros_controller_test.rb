require 'test_helper'

class HerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hero = heros(:one)
  end

  test "should get index" do
    get heros_url, as: :json
    assert_response :success
  end

  test "should create hero" do
    assert_difference('Hero.count') do
      post heros_url, params: { hero: { backstory: @hero.backstory, identity: @hero.identity, image: @hero.image, name: @hero.name, powers: @hero.powers, title: @hero.title } }, as: :json
    end

    assert_response 201
  end

  test "should show hero" do
    get hero_url(@hero), as: :json
    assert_response :success
  end

  test "should update hero" do
    patch hero_url(@hero), params: { hero: { backstory: @hero.backstory, identity: @hero.identity, image: @hero.image, name: @hero.name, powers: @hero.powers, title: @hero.title } }, as: :json
    assert_response 200
  end

  test "should destroy hero" do
    assert_difference('Hero.count', -1) do
      delete hero_url(@hero), as: :json
    end

    assert_response 204
  end
end
