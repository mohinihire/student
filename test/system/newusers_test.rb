require "application_system_test_case"

class NewusersTest < ApplicationSystemTestCase
  setup do
    @newuser = newusers(:one)
  end

  test "visiting the index" do
    visit newusers_url
    assert_selector "h1", text: "Newusers"
  end

  test "creating a Newuser" do
    visit newusers_url
    click_on "New Newuser"

    fill_in "Address", with: @newuser.address
    fill_in "Email", with: @newuser.email
    fill_in "Mobile", with: @newuser.mobile
    fill_in "Name", with: @newuser.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create Newuser"

    assert_text "Newuser was successfully created"
    click_on "Back"
  end

  test "updating a Newuser" do
    visit newusers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @newuser.address
    fill_in "Email", with: @newuser.email
    fill_in "Mobile", with: @newuser.mobile
    fill_in "Name", with: @newuser.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update Newuser"

    assert_text "Newuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Newuser" do
    visit newusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newuser was successfully destroyed"
  end
end
