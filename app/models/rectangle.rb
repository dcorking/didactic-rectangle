class Rectangle < ActiveRecord::Base
  def area
    length * width
  end
end
