require "application_system_test_case"

class MenuesTest < ApplicationSystemTestCase
  setup do
    @menue = menues(:one)
  end

  test "visiting the index" do
    visit menues_url
    assert_selector "h1", text: "Menues"
  end

  test "creating a Menue" do
    visit menues_url
    click_on "New Menue"

    fill_in "Description", with: @menue.description
    fill_in "Image url", with: @menue.image_url
    fill_in "Ingridients", with: @menue.ingridients
    fill_in "Name", with: @menue.name
    click_on "Create Menue"

    assert_text "Menue was successfully created"
    click_on "Back"
  end

  test "updating a Menue" do
    visit menues_url
    click_on "Edit", match: :first

    fill_in "Description", with: @menue.description
    fill_in "Image url", with: @menue.image_url
    fill_in "Ingridients", with: @menue.ingridients
    fill_in "Name", with: @menue.name
    click_on "Update Menue"

    assert_text "Menue was successfully updated"
    click_on "Back"
  end

  test "destroying a Menue" do
    visit menues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menue was successfully destroyed"
  end
end
