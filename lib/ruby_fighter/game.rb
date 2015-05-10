module RubyFighter

  class Game < Gosu::Window
    def initialize
      super(768, 480, false)
      self.caption = "Ruby Fighter"

      @backdrop = Backdrop.new(self, "background-1.jpg")
      @player1  = Player.new(self, "ryu", false)
      @player2  = Player.new(self, "chun-li", true)
    end

    def draw
      @backdrop.draw

      @player1.draw
      @player2.draw
    end

    def update
      if button_down? char_to_button_id("a")
        @player1.move_left if @player1.left > 0
      elsif button_down? char_to_button_id("d")
        @player1.move_right if @player1.right < @player2.left
      elsif button_down? char_to_button_id("k")
        @player2.move_left if @player2.left > @player1.right
      elsif button_down? char_to_button_id(";")
        @player2.move_right if @player2.right < width
      end
    end
  end

end
