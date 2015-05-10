module RubyFighter

  class Game < Gosu::Window
    def initialize
      super(640, 480, false)
      self.caption = "Ruby Fighter"
    end
  end

end
