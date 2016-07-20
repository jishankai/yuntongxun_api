# coding: utf-8
module YunTongXun
  module Sms
    class << self
      include YunTongXun::Helper

      # 短信发送
      def send(params)
        @method = 'SMS/TemplateSMS'
        @accounts = 'Accounts'

        params[:appId] = params[:appId] || YunTongXun.config.app_id

        response = get_response(params)
      end

    end
  end
end
