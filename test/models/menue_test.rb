require 'test_helper'

class MenueTest < ActiveSupport::TestCase
  test "Menue attributes must not be empty" do
    menue = Menue.new
    assert menue.invalid?
    assert menue.errors[:name].any?
    assert menue.errors[:ingridients].any?
    assert menue.errors[:description].any?
    assert menue.errors[:image_url].any?
  end

  def new_menue(image_url)
    Menue.new(name: "Rice",
              ingridients:    "abc",
              description:    "yyy",
              image_url:       image_url)
  end
  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
    http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |image_url|
      assert new_menue(image_url).valid?,
            "#{image_url} shouldn't be invalid"
    end
    bad.each do |image_url|
      assert new_menue(image_url).invalid?,
      "#{image_url} shouldn't be valid"
    end
  end

  # test "Menue is not valid without a unique name" do    
  #   menue = Menue.new(name:  menues(:Vegetable).name,
  #                     ingridients: "asd",                  
  #                     description: "qwe",
  #                     image_url:   "ghj.gif")


  #   assert product.valid?
  #   assert_equal ["has already been taken"], menue.errors[:name]
  # end



end
