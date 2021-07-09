# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :require_login
  add_flash_types :success, :info, :warning, :danger

  def not_authenticated
    redirect_to login_path, warning: 'ログインしてください'
  end
end
