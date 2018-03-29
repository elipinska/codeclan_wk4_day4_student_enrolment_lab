require('minitest/autorun')
require_relative('../student')
require_relative('../house')


class StudentTest < MiniTest::Test



  def test_find_by_id
    assert_equal(Student, Student.find(3).class)
  end

  def test_find_house()
    student = Student.find(2)
    assert_equal(House, student.find_house().class)
    assert_equal('Fire', student.find_house().name)
  end

  def test_all
    assert_equal(3, Student.all().length)
  end

end
