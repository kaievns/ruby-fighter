module RubyFighter

  class Controls
    PLAYER1 = {
      'a' => :left,
      'd' => :right
    }

    PLAYER2 = {
      'k' => :left,
      ';' => :right
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
