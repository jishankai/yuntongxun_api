# coding: utf-8
module YunTongXun
  module Voice
    class << self
      include YunTongXun::Helper

      # 语音双呼
      def double_call(params)
        @accounts = 'SubAccounts'
        @method   = 'Calls/Callback'

        response = get_response(params)
      end

      # 语音通知
      def single_call(params)
        response = get_response(params)
      end

    end
  end
end
