# frozen_string_literal: true

class TasksComponent < ViewComponent::Base
  def initialize(tasks:)
    @tasks = tasks
  end
end
