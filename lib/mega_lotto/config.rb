 # class for configuration
module MegaLotto
  # init configuration class
  class Configuration
    attr_accessor :drawing_count

    def initialize
      @drawing_count = 5 
    end
  end
end
