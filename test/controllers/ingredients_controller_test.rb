require "test_helper"

class IngredientsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/ingredients.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Ingredient.count, data.length
  end

  test "create" do
    assert_difference "Ingredient.count", 1 do
      post "/ingredients.json", params: { name: "beans", image_url: "beans.jpeg" }
      assert_response 200
    end
  end

  test "show" do
    get "/ingredients/#{Ingredient.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["name", "image_url"], data.keys
  end
end
