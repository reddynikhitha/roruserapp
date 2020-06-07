require "application_system_test_case"

class LastnamesTest < ApplicationSystemTestCase
  setup do
    @lastname = lastnames(:one)
  end

  test "visiting the index" do
    visit lastnames_url
    assert_selector "h1", text: "Lastnames"
  end

  test "creating a Lastname" do
    visit lastnames_url
    click_on "New Lastname"

    click_on "Create Lastname"

    assert_text "Lastname was successfully created"
    click_on "Back"
  end

  test "updating a Lastname" do
    visit lastnames_url
    click_on "Edit", match: :first

    click_on "Update Lastname"

    assert_text "Lastname was successfully updated"
    click_on "Back"
  end

  test "destroying a Lastname" do
    visit lastnames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lastname was successfully destroyed"
  end
end
