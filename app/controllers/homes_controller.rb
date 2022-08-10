# frozen_string_literal: true

class HomesController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def index
    @wishlist_count = Wishlist.all.length
  end
end
