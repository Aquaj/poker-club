class HistoryController < ApplicationController
  def show
    @history = current_user.history
  end
end
