require 'test_helper'

class ProjectsVendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projects_vendor = projects_vendors(:one)
  end

  test "should get index" do
    get projects_vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_projects_vendor_url
    assert_response :success
  end

  test "should create projects_vendor" do
    assert_difference('ProjectsVendor.count') do
      post projects_vendors_url, params: { projects_vendor: { bidPrice: @projects_vendor.bidPrice, project_id: @projects_vendor.project_id, vendor_id: @projects_vendor.vendor_id } }
    end

    assert_redirected_to projects_vendor_url(ProjectsVendor.last)
  end

  test "should show projects_vendor" do
    get projects_vendor_url(@projects_vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_projects_vendor_url(@projects_vendor)
    assert_response :success
  end

  test "should update projects_vendor" do
    patch projects_vendor_url(@projects_vendor), params: { projects_vendor: { bidPrice: @projects_vendor.bidPrice, project_id: @projects_vendor.project_id, vendor_id: @projects_vendor.vendor_id } }
    assert_redirected_to projects_vendor_url(@projects_vendor)
  end

  test "should destroy projects_vendor" do
    assert_difference('ProjectsVendor.count', -1) do
      delete projects_vendor_url(@projects_vendor)
    end

    assert_redirected_to projects_vendors_url
  end
end
