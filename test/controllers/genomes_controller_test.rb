require 'test_helper'

class GenomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get genomes_index_url
    assert_response :success
  end

  test "should get new" do
    get genomes_new_url
    assert_response :success
  end

  test "should get create" do
    get genomes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get genomes_destroy_url
    assert_response :success
  end

end
