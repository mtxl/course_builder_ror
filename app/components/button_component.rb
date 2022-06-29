# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base
  attr_accessor :title, :color, :action

  def initialize(title:, color:, action:)
    @title = title
    @color = color
    @action = action
  end

  def change_color
    if @color == "default"
      return "has-background-white-bis"
    elsif @color == "green"
      return "is-success"
    else
      return "has-background-light"
    end
  end

end
