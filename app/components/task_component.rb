# frozen_string_literal: true

class TaskComponent < ViewComponent::Base
  def initialize(task:)
    @task = task
  end
end
