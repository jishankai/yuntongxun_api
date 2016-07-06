# coding: utf-8
module YunTongXun
  module Voice
    class << self
      include YunTongXun::Helper

      # 语音验证
      def voice_verify(params)
        @accounts = 'Accounts'
        @method   = 'Calls/VoiceVerify'
        params[:appId] = params[:appId] || YunTongXun.config.app_id

        response = get_response(params)
      end

      # 电话回拨
      def double_call(params)
        @accounts = 'SubAccounts'
        @method   = 'Calls/Callback'

        response = get_response(params)
      end

      # 取消回拨
      def cancel_call(params)
        @accounts = 'Accounts'
        @method   = 'Calls/CallCancel'
        params[:appId] = params[:appId] || YunTongXun.config.app_id

        response = get_response(params)
      end

      # 外呼通知
      def landing_call(params)
        @accounts = 'Accounts'
        @method   = 'Calls/LandingCalls'
        params[:appId] = params[:appId] || YunTongXun.config.app_id

        response = get_response(params)
      end

    end
  end
end
