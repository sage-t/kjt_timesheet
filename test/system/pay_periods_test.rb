require "application_system_test_case"

class PayPeriodsTest < ApplicationSystemTestCase
  setup do
    @pay_period = pay_periods(:one)
  end

  test "visiting the index" do
    visit pay_periods_url
    assert_selector "h1", text: "Pay Periods"
  end

  test "creating a Pay period" do
    visit pay_periods_url
    click_on "New Pay Period"

    fill_in "End", with: @pay_period.end
    fill_in "Start", with: @pay_period.start
    click_on "Create Pay period"

    assert_text "Pay period was successfully created"
    click_on "Back"
  end

  test "updating a Pay period" do
    visit pay_periods_url
    click_on "Edit", match: :first

    fill_in "End", with: @pay_period.end
    fill_in "Start", with: @pay_period.start
    click_on "Update Pay period"

    assert_text "Pay period was successfully updated"
    click_on "Back"
  end

  test "destroying a Pay period" do
    visit pay_periods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pay period was successfully destroyed"
  end
end
