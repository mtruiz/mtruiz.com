require "application_system_test_case"

class RootPathTest < ApplicationSystemTestCase
  test "visiting the root path" do
    visit "/"
    assert_selector "h1", text: "Matt Ruiz"
  end
end
