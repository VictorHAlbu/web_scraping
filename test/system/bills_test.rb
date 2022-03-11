require "application_system_test_case"

class BillsTest < ApplicationSystemTestCase
  setup do
    @bill = bills(:one)
  end

  test "visiting the index" do
    visit bills_url
    assert_selector "h1", text: "Bills"
  end

  test "creating a Bill" do
    visit bills_url
    click_on "New Bill"

    fill_in "Author", with: @bill.author
    fill_in "Current location", with: @bill.current_location
    fill_in "End date deadline", with: @bill.end_date_deadline
    fill_in "Last action", with: @bill.last_action
    fill_in "Last processing date", with: @bill.last_processing_date
    fill_in "Menu", with: @bill.menu
    fill_in "Presentation", with: @bill.presentation
    fill_in "Status", with: @bill.status
    click_on "Create Bill"

    assert_text "Bill was successfully created"
    click_on "Back"
  end

  test "updating a Bill" do
    visit bills_url
    click_on "Edit", match: :first

    fill_in "Author", with: @bill.author
    fill_in "Current location", with: @bill.current_location
    fill_in "End date deadline", with: @bill.end_date_deadline
    fill_in "Last action", with: @bill.last_action
    fill_in "Last processing date", with: @bill.last_processing_date
    fill_in "Menu", with: @bill.menu
    fill_in "Presentation", with: @bill.presentation
    fill_in "Status", with: @bill.status
    click_on "Update Bill"

    assert_text "Bill was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill" do
    visit bills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill was successfully destroyed"
  end
end
