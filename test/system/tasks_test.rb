require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url # "/"
  
    assert_selector "h1", text: "Task Manager"
    assert_selector ".task-item", count: Task.count
  end
end
