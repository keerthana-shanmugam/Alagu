# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :add, foreign_key: :adds_id
end
