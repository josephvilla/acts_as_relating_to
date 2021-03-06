# == Schema Information
#
# Table name: acts_as_relating_to_relationships
#
#  id                  :integer          not null, primary key
#  owner_id            :integer
#  owner_type          :string
#  in_relation_to_id   :integer
#  in_relation_to_type :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

module ActsAsRelatingTo
  class RelationshipsControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should get create" do
      get :create
      assert_response :success
    end

    test "should get edit" do
      get :edit
      assert_response :success
    end

    test "should get show" do
      get :show
      assert_response :success
    end

    test "should get update" do
      get :update
      assert_response :success
    end

    test "should get destroy" do
      get :destroy
      assert_response :success
    end

  end
end
