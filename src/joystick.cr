module SDL
  class Joystick

    def initialize
      raise Error.new("No joystick connected") if (LibSDL.num_joysticks < 1)
      @joystick = LibSDL.joystick_open(0)
      raise Error.new("Unable to open game controller!") unless @joystick
    end

    def num_axes
      LibSDL.joystick_num_axes(@joystick)
    end

    def num_hats
      LibSDL.joystick_num_hats(@joystick)
    end

    def close
      LibSDL.joystick_close(@joystick)
    end
    
  end

end
