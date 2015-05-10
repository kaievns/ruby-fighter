module RubyFighter

  class Game < Gosu::Window
    def initialize
      super(768, 480, false)
      self.caption = "Ruby Fighter"

      @backdrop = Backdrop.new(self, "background-1.jpg")
      @player1  = Player.new(self, "ryu")
      @player2  = Player.new(self, "chun-li")
    end

    def draw
      @backdrop.draw

      @player1.move_to 100
      @player2.move_to width - 100 - @player2.width

      @player1.draw
      @player2.draw
    end
  end

end
