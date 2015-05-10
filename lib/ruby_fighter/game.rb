module RubyFighter

  class Game < Gosu::Window
    def initialize
      super(768, 480, false)
      self.caption = "Ruby Fighter"

      @dude = Gosu::Image.new(self, "assets/ryu/idle-1.gif", false)
      @backdrop = Gosu::Image.new(self, "assets/background-1.jpg", false)
    end

    def draw
      @dude.draw(100, 180, 1, 3, 3)

      factor = height / @backdrop.height
      bg_width = @backdrop.width * factor
      bg_x = -(bg_width - width) / 2
      @backdrop.draw(bg_x, 0, 0, factor, factor)
    end
  end

end
