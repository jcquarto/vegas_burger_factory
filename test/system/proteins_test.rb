require "application_system_test_case"

class ProteinsTest < ApplicationSystemTestCase
  setup do
    @protein = proteins(:one)
  end

  test "visiting the index" do
    visit proteins_url
    assert_selector "h1", text: "Proteins"
  end

  test "creating a Protein" do
    visit proteins_url
    click_on "New Protein"

    fill_in "Color", with: @protein.color
    fill_in "Description", with: @protein.description
    fill_in "Name", with: @protein.name
    fill_in "Price", with: @protein.price
    click_on "Create Protein"

    assert_text "Protein was successfully created"
    click_on "Back"
  end

  test "updating a Protein" do
    visit proteins_url
    click_on "Edit", match: :first

    fill_in "Color", with: @protein.color
    fill_in "Description", with: @protein.description
    fill_in "Name", with: @protein.name
    fill_in "Price", with: @protein.price
    click_on "Update Protein"

    assert_text "Protein was successfully updated"
    click_on "Back"
  end

  test "destroying a Protein" do
    visit proteins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Protein was successfully destroyed"
  end
end
