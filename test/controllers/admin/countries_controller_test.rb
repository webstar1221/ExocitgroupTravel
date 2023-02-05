require "test_helper"

class Admin::CountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_country = admin_countries(:one)
  end

  test "should get index" do
    get admin_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_country_url
    assert_response :success
  end

  test "should create admin_country" do
    assert_difference('Admin::Country.count') do
      post admin_countries_url, params: { admin_country: {  } }
    end

    assert_redirected_to admin_country_url(Admin::Country.last)
  end

  test "should show admin_country" do
    get admin_country_url(@admin_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_country_url(@admin_country)
    assert_response :success
  end

  test "should update admin_country" do
    patch admin_country_url(@admin_country), params: { admin_country: {  } }
    assert_redirected_to admin_country_url(@admin_country)
  end

  test "should destroy admin_country" do
    assert_difference('Admin::Country.count', -1) do
      delete admin_country_url(@admin_country)
    end

    assert_redirected_to admin_countries_url
  end
end
