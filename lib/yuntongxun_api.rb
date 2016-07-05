require "yuntongxun_api/version"
require "yuntongxun_api/configuration"
require "yuntongxun_api/helper"
require "yuntongxun_api/sms"
require "yuntongxun_api/voice"
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
