require 'minitest/autorun'

class OuputTests < Minitest::Test
  def test_has_no_output
    assert_silent { update_database }
  end

  def test_stdout_and_stderr
    assert_output('', /No records found/) do
      print_all_records
    end
  end

  def test_stdout_and_stderr
    out, err = capture_io do
      print_all_records
    end

    assert_equal('', out)
    assert_match(/No records found/, err)
  end
end