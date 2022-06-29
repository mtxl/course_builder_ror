# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  def initialize(title:, color:, action:)
    @title = title
    @color = color
    @action = action
  end

  def change_color
    case @color
    when "white"
      return "has-background-white-bis"
    when "green"
      return "is-success"
    end

    return "has-background-light"
  end
end
