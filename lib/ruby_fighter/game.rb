module RubyFighter

  class Game < Gosu::Window
    def initialize
      super(768, 480, false)
      self.caption = "Ruby Fighter"

      @backdrop = Backdrop.new(self, "background-1.jpg")
      @dude = Player.new(self, "ryu")
    end

    def draw
      @backdrop.draw
      @dude.draw
    end
  end

end
