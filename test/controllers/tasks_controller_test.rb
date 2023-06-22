# frozen_string_literal: true

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test '#index' do
    get tasks_path

    assert_response :success
  end

  test '#new' do
    get new_task_path

    assert_response :success
  end

  test '#create' do
    post tasks_path, params: { task: { description: 'Buy milk' } }

    assert_redirected_to tasks_path
  end

  test '#create with invalid params' do
    post tasks_path, params: { task: { description: nil } }

    assert_response :success
  end

  test '#update' do
    task = Task.create!(description: 'Buy milk')

    patch task_path(task), params: { task: { description: 'Buy almond milk' }, format: :turbo_stream }

    assert_response :success
  end
end
