defmodule ExceptionHandler do
  def check_exceptions do
    try do
      18/1
    rescue
      ArithmeticError->"Cannot divide a number by zero"
    end
  end
end
ExceptionHandler.check_exceptions()
