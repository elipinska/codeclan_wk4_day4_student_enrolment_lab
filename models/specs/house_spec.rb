require('minitest/autorun')
require_relative('../house')


class HouseTest < MiniTest::Test

  def test_all
    assert_equal(4, House.all().length)
  end

  def test_find_by_id
    assert_equal(House, House.find(3).class)
  end


end
