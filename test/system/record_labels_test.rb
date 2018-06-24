require "application_system_test_case"

class RecordLabelsTest < ApplicationSystemTestCase
  setup do
    @record_label = record_labels(:one)
  end

  test "visiting the index" do
    visit record_labels_url
    assert_selector "h1", text: "Record Labels"
  end

  test "creating a Record label" do
    visit record_labels_url
    click_on "New Record Label"

    fill_in "Name", with: @record_label.name
    click_on "Create Record label"

    assert_text "Record label was successfully created"
    click_on "Back"
  end

  test "updating a Record label" do
    visit record_labels_url
    click_on "Edit", match: :first

    fill_in "Name", with: @record_label.name
    click_on "Update Record label"

    assert_text "Record label was successfully updated"
    click_on "Back"
  end

  test "destroying a Record label" do
    visit record_labels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Record label was successfully destroyed"
  end
end
