require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'todolist'

class TodoListTest < Minitest::Test
  def setup
    @todo1 = Todo.new('Buy milk')
    @todo2 = Todo.new('Clean room')
    @todo3 = Todo.new('Go to gym')
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todos.first, @list.first)
  end

  def test_last
    assert_equal(@todos.last, @list.last)
  end

  def test_shift
    shifted_todo = @list.shift
    assert(@list.size == @todos.size - 1 && shifted_todo == @todos.first)
  end

  def test_pop
    popped_todo = @list.pop
    assert(@list.size == @todos.size - 1 && popped_todo = @todos.last)
  end

  def test_done?
    if @list.select { |todo| todo.done? }.size == @list.size
      assert_equal(true, @list.done?)
    else
      assert_equal(false,@list.done?)
    end
  end

  def test_raises_TypeError_when_added_an_item_that_is_not_a_Todo
    assert_raises(TypeError) { @list << 42 }
  end

  def test_shovel_operator
    assert_equal(@todos + [@todo1], @list << @todo1)
  end

# Official Solution for Test Case Above
# def test_shovel
#   new_todo = Todo.new('Walk the dog')
#   @list << new_todo
#   @todos << new_todo
#   assert_equal(@todos, @list.to_a)
#  end

  def test_add
    assert_equal(@todos + [@todo1], @list.add(@todo1))
  end

  def test_item_at
    assert_raises(IndexError) { @list.item_at(99999) }
    assert_equal(@todo2, @list.item_at(1))
  end

  def test_mark_done_at
    @list.mark_done_at(0)
    assert_raises(IndexError) { @list.item_at(99999) }
    assert_equal(true, @list.first.done?)
  end

# Official Solution for Test Case Above
# def test_mark_done_at
#  assert_raises(IndexError) { @list.item_at(99999) }
#  @list.mark_done_at(1)
#  assert_equal(false, @list[0].done?)
#  assert_equal(true, @list[1].done?)
#  assert_equal(false, @list[2].done?)
# end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.item_at(99999) }
    @list.each { |todo| todo.done! }
    @list.mark_undone_at(1)
    assert_equal(true, @list.item_at(0).done?)
    assert_equal(false, @list.item_at(1).done?)
    assert_equal(true, @list.item_at(2).done?)
  end

  def test_done!
    @list.done!
    @list.select { |todo| todo.done? }.size == @list.size
  end

  def test_remove_at
    assert_raises(IndexError) { @list.remove_at(99999).nil? }
    @list.remove_at(1)
    assert_equal(2, @list.size)
    assert_equal(@todo3, @list.item_at(1))
  end

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_to_s_with_a_done_task
    @list.item_at(1).done!
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [X] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_to_s_with_all_done_tasks
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    @list.done!
    assert_equal(output, @list.to_s)
  end

  def test_each1
    result = []
    @list.each { |todo| result << todo }
    assert_equal(@todos, result)
  end

  def test_each2
    assert_equal(@list, @list.each {})
  # assert_equal(@list, @list.each { |todo| nil })
  end

  def test_select0
    @list.mark_done_at(1)
    answer = TodoList.new(@list.title)
    answer.add(@todo2)
    assert_equal(answer.title, @list.title)
    assert_equal(answer.to_s, @list.select { |todo| todo.done? }.to_s)
  end

  def test_select1
    @list.mark_done_at(1)
    assert_equal([@todo2], @list.select { |todo| todo.done? }.to_a)
  end

  def test_find_by_title
    assert_equal(@todo1, @list.find_by_title('Buy milk'))
    assert_equal(@todo2, @list.find_by_title('Clean room'))
    assert_equal(@todo3, @list.find_by_title('Go to gym'))
  end
end
