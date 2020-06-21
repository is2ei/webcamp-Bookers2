# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :about]

  def index
  end

  def about
  end

end
