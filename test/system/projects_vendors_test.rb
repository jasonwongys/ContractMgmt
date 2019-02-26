require "application_system_test_case"

class ProjectsVendorsTest < ApplicationSystemTestCase
  setup do
    @projects_vendor = projects_vendors(:one)
  end

  test "visiting the index" do
    visit projects_vendors_url
    assert_selector "h1", text: "Projects Vendors"
  end

  test "creating a Projects vendor" do
    visit projects_vendors_url
    click_on "New Projects Vendor"

    fill_in "Bidprice", with: @projects_vendor.bidPrice
    fill_in "Project", with: @projects_vendor.project_id
    fill_in "Vendor", with: @projects_vendor.vendor_id
    click_on "Create Projects vendor"

    assert_text "Projects vendor was successfully created"
    click_on "Back"
  end

  test "updating a Projects vendor" do
    visit projects_vendors_url
    click_on "Edit", match: :first

    fill_in "Bidprice", with: @projects_vendor.bidPrice
    fill_in "Project", with: @projects_vendor.project_id
    fill_in "Vendor", with: @projects_vendor.vendor_id
    click_on "Update Projects vendor"

    assert_text "Projects vendor was successfully updated"
    click_on "Back"
  end

  test "destroying a Projects vendor" do
    visit projects_vendors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projects vendor was successfully destroyed"
  end
end
