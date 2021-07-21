require "application_system_test_case"

class CountriesTest < ApplicationSystemTestCase
  setup do
    @country = countries(:one)
  end

  test "visiting the index" do
    visit countries_url
    assert_selector "h1", text: "Countries"
  end

  test "creating a Country" do
    visit countries_url
    click_on "New Country"

    fill_in "Img country", with: @country.img_country
    fill_in "Slug", with: @country.slug
    fill_in "Title", with: @country.title
    fill_in "User", with: @country.user_id
    click_on "Create Country"

    assert_text "Country was successfully created"
    click_on "Back"
  end

  test "updating a Country" do
    visit countries_url
    click_on "Edit", match: :first

    fill_in "Img country", with: @country.img_country
    fill_in "Slug", with: @country.slug
    fill_in "Title", with: @country.title
    fill_in "User", with: @country.user_id
    click_on "Update Country"

    assert_text "Country was successfully updated"
    click_on "Back"
  end

  test "destroying a Country" do
    visit countries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Country was successfully destroyed"
  end
end
