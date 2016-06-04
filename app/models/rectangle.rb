class Rectangle < ActiveRecord::Base
  # virtual attribute, in square metres
  def area
    length * width
  end

  ##
  ## scopes
  ##
  def self.narrow
    where(width: 0..5)
  end

  def self.short
    where(length: 0..15)
  end

  # area up to 15 square metres
  def self.small
    find_by_sql('SELECT * FROM `rectangles` WHERE '\
                '(`rectangles`.`length` * `rectangles`.`width` '\
                'BETWEEN 0.0 AND 15.0)')
  end

  # area up to a square metres
  def self.area_lteq(a)
    find_by_sql('SELECT * FROM `rectangles` WHERE '\
                '(`rectangles`.`length` * `rectangles`.`width` '\
                "BETWEEN 0.0 AND #{a})")
  end
end
