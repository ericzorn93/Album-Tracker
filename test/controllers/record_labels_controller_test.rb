require 'test_helper'

class RecordLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record_label = record_labels(:one)
  end

  test "should get index" do
    get record_labels_url
    assert_response :success
  end

  test "should get new" do
    get new_record_label_url
    assert_response :success
  end

  test "should create record_label" do
    assert_difference('RecordLabel.count') do
      post record_labels_url, params: { record_label: { name: @record_label.name } }
    end

    assert_redirected_to record_label_url(RecordLabel.last)
  end

  test "should show record_label" do
    get record_label_url(@record_label)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_label_url(@record_label)
    assert_response :success
  end

  test "should update record_label" do
    patch record_label_url(@record_label), params: { record_label: { name: @record_label.name } }
    assert_redirected_to record_label_url(@record_label)
  end

  test "should destroy record_label" do
    assert_difference('RecordLabel.count', -1) do
      delete record_label_url(@record_label)
    end

    assert_redirected_to record_labels_url
  end
end
