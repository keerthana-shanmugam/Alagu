# frozen_string_literal: true

require 'test_helper'

class ShowsControllerTest < ActionDispatch::IntegrationTest
  test 'should get wishlist' do
    get shows_wishlist_url
    assert_response :success
  end
end
