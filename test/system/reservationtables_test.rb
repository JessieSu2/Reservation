require "application_system_test_case"

class ReservationtablesTest < ApplicationSystemTestCase
  setup do
    @reservationtable = reservationtables(:one)
  end

  test "visiting the index" do
    visit reservationtables_url
    assert_selector "h1", text: "Reservationtables"
  end

  test "should create reservationtable" do
    visit reservationtables_url
    click_on "New reservationtable"

    fill_in "Name", with: @reservationtable.name
    fill_in "People", with: @reservationtable.people
    fill_in "Phone", with: @reservationtable.phone
    click_on "Create Reservationtable"

    assert_text "Reservationtable was successfully created"
    click_on "Back"
  end

  test "should update Reservationtable" do
    visit reservationtable_url(@reservationtable)
    click_on "Edit this reservationtable", match: :first

    fill_in "Name", with: @reservationtable.name
    fill_in "People", with: @reservationtable.people
    fill_in "Phone", with: @reservationtable.phone
    click_on "Update Reservationtable"

    assert_text "Reservationtable was successfully updated"
    click_on "Back"
  end

  test "should destroy Reservationtable" do
    visit reservationtable_url(@reservationtable)
    click_on "Destroy this reservationtable", match: :first

    assert_text "Reservationtable was successfully destroyed"
  end
end
