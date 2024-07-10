require "application_system_test_case"

class TimeRecordsTest < ApplicationSystemTestCase
  setup do
    @time_record = time_records(:one)
  end

  test "visiting the index" do
    visit time_records_url
    assert_selector "h1", text: "Time records"
  end

  test "should create time record" do
    visit time_records_url
    click_on "New time record"

    fill_in "Current time", with: @time_record.current_time
    click_on "Create Time record"

    assert_text "Time record was successfully created"
    click_on "Back"
  end

  test "should update Time record" do
    visit time_record_url(@time_record)
    click_on "Edit this time record", match: :first

    fill_in "Current time", with: @time_record.current_time
    click_on "Update Time record"

    assert_text "Time record was successfully updated"
    click_on "Back"
  end

  test "should destroy Time record" do
    visit time_record_url(@time_record)
    click_on "Destroy this time record", match: :first

    assert_text "Time record was successfully destroyed"
  end
end
