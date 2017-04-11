module InvalidAuthenticityTokenRescue
  def self.configure
    yield configuration
  end
  
  def self.configuration
    @configuration ||= Configuration.new
  end
  
  class Configuration
    attr_accessor :redirect_path
    
    def initialize
      @redirect_path = 'new_session_path'
    end
  end
end
