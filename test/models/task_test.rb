require "test_helper"

class TaskTest < ActiveSupport::TestCase

  test 'valid task' do
    task = Task.new(title: 'Title', details: 'Details', completed: true)
    assert task.valid?
  end

  test 'invalid task without title' do
    task = Task.new(details: 'Details', completed: true)
    assert_not task.valid?
  end

  test 'invalid task without details' do
    task = Task.new(title: 'Title', completed: true)
    assert_not task.valid?
  end

  test 'valid task without completed' do
    task = Task.new(title: 'Title', details: 'Details')
    assert task.valid?
  end

  test 'task completed with false as default value' do
    task = Task.new
    assert_not task.completed
  end

end
