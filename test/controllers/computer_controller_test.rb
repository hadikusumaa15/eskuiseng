require 'test_helper'
require 'rainbow'
require 'colorize'
class ComputerControllerTest < ActionDispatch::IntegrationTest
  success = "test success"
  failed = "test failed"
  computer = ComputerController.new()
  nil_value = "Computer can return nil value"
  value = "Computer can return value"
  data_size = "Computer can calculate data size"
  data_storage = "Computer can store array data"
  data_delete = "Computer can delete stored array data"


  def message(status="", message="")
    return "#{status}, #{message}"
  end

  test nil_value do
    begin
      return_nil = computer.play()
      assert_nil return_nil
      puts message(success, nil_value).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test value do 
    begin
      return_value = computer.play(10)
      assert_equal 10, return_value
      puts message(success, value).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test data_storage do 
    begin
      storage = computer.store(1)
      storage = computer.store(2)
      storage = computer.store(3)
      assert_equal [1,2,3], storage
      puts message(success, data_storage).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test data_delete do 
    begin
      storage = computer.store(1)
      storage = computer.store(2)
      storage = computer.store(3)
      storage = computer.delete(2)
      assert_equal [1,3], storage
      puts message(success, data_delete).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test data_size do 
    begin
      storage = computer.store(1)
      storage = computer.store(2)
      storage = computer.store(3)
      size = computer.size(storage)
      assert_equal 3, size
      puts message(success, data_size).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

end
