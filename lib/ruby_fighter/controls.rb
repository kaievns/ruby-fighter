module RubyFighter

  class Controls
    PLAYER1 = {
      'a' => :left,
      'd' => :right,
      'q' => :block,
      'e' => :punch,
      'r' => :kick
    }

    PLAYER2 = {
      'k' => :left,
      ';' => :right,
      'i' => :block,
      'p' => :punch,
      '[' => :kick
    }

    def initialize(window, player, num)
      @window = window
      @player = player
      @keys   = [PLAYER1, PLAYER2][num-1]
    end

    def update(left, right)
      case matching_action
      when :left  then @player.move_left  if @player.left > left
      when :right then @player.move_right if @player.right < right
      end
    end

    def button_down(key)
      case @keys[key]
      when :left, :right then @player.walking!
      when :block then @player.blocking!
      when :punch then @player.punch!
      when :kick  then @player.kick!
      end
    end

    def button_up(key)
      @player.idle!
    end

  private

    def matching_action
      @keys.each do |key, action|
        if @window.button_down? key
          return action
        end
      end
    end

  end

end
