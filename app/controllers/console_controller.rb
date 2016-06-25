class ConsoleController < ApplicationController
	before_filter :authenticate_user!
  def index
  end

  def journal
  end
end
