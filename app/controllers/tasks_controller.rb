# frozen_string_literal: true

class TasksController < ApplicationController
  layout -> { ApplicationLayout }

  def index
    render Tasks::IndexView.new
  end
end
