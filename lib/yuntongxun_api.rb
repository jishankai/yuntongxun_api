require "ryuntongxun/version"
require "ryuntongxun/version"
require "ryuntongxun/configuration"
require "ryuntongxun/helper"
require "ryuntongxun/sms"
require "ryuntongxun/tts"
require "ryuntongxun/voice"
require "logger"

module YunTongXun
  class << self
    def setup
      yield config
    end

    def config
      @config ||= Configuration.new
    end

    def logger
      @logger ||= Logger.new(STDOUT)
    end
  end
end
