module RubyFighter

  class Game < Gosu::Window
    def initialize
      super(768, 480, false)
      self.caption = "Ruby Fighter"

      @backdrop = Backdrop.new(self, "background-1.jpg")

      @dude = Gosu::Image.new(self, "assets/ryu/idle-1.gif", false)
    end

    def draw
      @backdrop.draw

      @dude.draw(100, 180, 1, 3, 3)
    end
  end

end
