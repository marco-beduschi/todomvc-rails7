# frozen_string_literal: true

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'has a description' do
    task = Task.new(description: 'Buy milk')

    assert_equal 'Buy milk', task.description
  end

  test 'description is required' do
    task = Task.new

    assert_not task.valid?
    assert_includes task.errors.full_messages, 'Description can’t be blank'
  end

  test 'has a completed status' do
    task = Task.new(completed: true)

    assert_equal true, task.completed
  end
end
