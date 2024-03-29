require "application_system_test_case"

class LogsTest < ApplicationSystemTestCase
  setup do
    @log = logs(:one)
  end

  test "visiting the index" do
    visit logs_url
    assert_selector "h1", text: "Logs"
  end

  test "should create log" do
    visit logs_url
    click_on "New log"

    fill_in "Description", with: @log.description
    fill_in "End at", with: @log.end_at
    fill_in "Start at", with: @log.start_at
    fill_in "Task", with: @log.task_id
    fill_in "User", with: @log.user_id
    click_on "Create Log"

    assert_text "Log was successfully created"
    click_on "Back"
  end

  test "should update Log" do
    visit log_url(@log)
    click_on "Edit this log", match: :first

    fill_in "Description", with: @log.description
    fill_in "End at", with: @log.end_at
    fill_in "Start at", with: @log.start_at
    fill_in "Task", with: @log.task_id
    fill_in "User", with: @log.user_id
    click_on "Update Log"

    assert_text "Log was successfully updated"
    click_on "Back"
  end

  test "should destroy Log" do
    visit log_url(@log)
    click_on "Destroy this log", match: :first

    assert_text "Log was successfully destroyed"
  end
end
