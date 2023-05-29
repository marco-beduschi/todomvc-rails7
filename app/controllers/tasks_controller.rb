# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    render(TasksComponent.new(tasks: Task.all), content_type: 'text/html')
  end

  def new
    render(NewTaskComponent.new(task: Task.new), content_type: 'text/html')
  end

  def create
    task = Task.new(params.require(:task).permit(:completed, :description))

    if task.save
      redirect_to tasks_path
    else
      render(NewTaskComponent.new(task:), content_type: 'text/html')
    end
  end
end
