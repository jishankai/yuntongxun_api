# coding: utf-8
module YunTongXun
  module Sms
    class << self
      include YunTongXun::Helper

      @accounts = 'Accounts'

      # 短信发送
      def send(params)
        @method = 'SMS/TemplateSMS'
        response = get_response(params)
      end

      # 短信发送记录查询
      def query(params)
        response = get_response(params)
      end

    end
  end
end
