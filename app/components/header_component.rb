# frozen_string_literal: true

class HeaderComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

  def is_user_log_in?
    return false if @user.nil?

    if @user[:email].present?
      true
    else
      false
    end
  end
end
