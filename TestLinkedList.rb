require 'minitest/autorun'
require 'minitest/rg'

require './LinkedList.rb'
require './Node.rb'

class TestLinkedList < MiniTest::Test

  def setup
    @list = LinkedList.new("Hello there!")
  end

  def test_linkedListInitialisesWithOneItem
    assert_equal(1, @list.length)
  end

  def test_canAccessHeadValue
    assert_equal("Hello there!", @list.getHead)
  end

  def test_addNewItemIncreasesListCount
    @list.add("Yaldy!")
    assert_equal(2, @list.length)
  end

  def test_getIndexZeroReturnsHead
    assert_equal("Hello there!", @list.getIndex(0).value)
  end

  def test_canGetValuesFromListOfTwo
    @list.add("Yaldy!")
    assert_equal("Hello there!", @list.getIndex(1).value)
    assert_equal("Yaldy!", @list.getIndex(0).value)
  end

  def test_deleteElementReturnsCorrectLength
    @list.add("Yaldy!")
    @list.add("Chips!")
    @list.delete_at(1)
    assert_equal(2, @list.length)
  end

  def test_deleteElementReturnsCorrectValues
    @list.add("Yaldy!")
    @list.add("Chips!")
    @list.delete_at(1)
    assert_equal("Chips!", @list.getIndex(0).value)
    assert_equal("Hello there!", @list.getIndex(1).value)
    assert_equal(nil, @list.getIndex(2))
  end    


end