require('minitest/autorun')
require_relative('../student')


class StudentTest < MiniTest::Test

  def test_all
    assert_equal(3, Student.all().length)
  end

  def test_find_by_id
    assert_equal(Student, Student.find(3).class)    
  end


end
