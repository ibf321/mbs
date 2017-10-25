require 'test_helper'

class RelatóriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relatório = relatórios(:one)
  end

  test "should get index" do
    get relatórios_url
    assert_response :success
  end

  test "should get new" do
    get new_relatório_url
    assert_response :success
  end

  test "should create relatório" do
    assert_difference('Relatório.count') do
      post relatórios_url, params: { relatório: {  } }
    end

    assert_redirected_to relatório_url(Relatório.last)
  end

  test "should show relatório" do
    get relatório_url(@relatório)
    assert_response :success
  end

  test "should get edit" do
    get edit_relatório_url(@relatório)
    assert_response :success
  end

  test "should update relatório" do
    patch relatório_url(@relatório), params: { relatório: {  } }
    assert_redirected_to relatório_url(@relatório)
  end

  test "should destroy relatório" do
    assert_difference('Relatório.count', -1) do
      delete relatório_url(@relatório)
    end

    assert_redirected_to relatórios_url
  end
end
