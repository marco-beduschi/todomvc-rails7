# frozen_string_literal: true

class NewTaskComponent < ViewComponent::Base
  def initialize(task:)
    @task = task
  end
end
