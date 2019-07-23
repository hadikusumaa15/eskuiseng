require 'test_helper'
require 'rainbow'
require 'colorize'
class ComputerControllerTest < ActionDispatch::IntegrationTest
  success = "test success"
  failed = "test failed"

  nil_value = "Computer can return nil value"
  value = "Computer can return value"
  data_size = "Computer can calculate data size"
  data_storage = "Computer can store array data"
  data_delete = "Computer can delete stored array data"
  add_up_numbers = "Computer can add up numbers"
  substract_numbers = "Computer can substract numbers with numbers"
  
  def message(status="", message="")
    return "#{status}, #{message}"
  end

  test nil_value do
    begin
      computer = ComputerController.new()
      return_nil = computer.play()
      assert_nil return_nil
      puts message(success, nil_value).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test value do 
    begin
      computer = ComputerController.new()
      return_value = computer.play(10)
      assert_equal 10, return_value
      puts message(success, value).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test data_storage do 
    begin
      computer = ComputerController.new()
      computer.store(1)
      computer.store(2)
      stored_data = computer.store(3)
      assert_equal [1,2,3], stored_data
      puts message(success, data_storage).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test data_delete do 
    begin
      computer = ComputerController.new()
      computer.store(1)
      computer.store(2)
      computer.store(3)
      delete = computer.delete(2)
      assert_equal [1,3], delete
      puts message(success, data_delete).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test data_size do 
    begin
      computer = ComputerController.new()
      computer.store(1)
      computer.store(2)
      storage = computer.store(3)
      size = computer.size(storage)
      assert_equal 3, size
      puts message(success, data_size).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test add_up_numbers do 
    begin
      computer = ComputerController.new()
      numbers = [2,3]
      number = computer.add_numbers(numbers)
      assert_equal 5, number
      puts message(success, add_up_numbers).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end

  test substract_numbers do 
    begin
      computer = ComputerController.new()
      numbers_a = [9,3]
      numbers_b = [1,2]
      number = computer.substract_numbers(numbers_a, numbers_b)
      assert_equal 9, number
      puts message(success, substract_numbers).green
    rescue => err
      puts message(failed, err.to_s).red
    end
  end



end
