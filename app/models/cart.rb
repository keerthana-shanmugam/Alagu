# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :adds,foreign_key: :adds_id
end
