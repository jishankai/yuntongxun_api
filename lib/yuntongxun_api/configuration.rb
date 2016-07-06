# coding: utf-8
module YunTongXun
  class Configuration
    # API请求地址分为正式（http/https）和沙箱（http/https）共四个地址
    # 正式-http: http://app.cloopen.com:8883
    # 正式-https: https://app.cloopen.com:8883
    # 沙箱-http: http://sandboxapp.cloopen.com:8883
    # 沙箱-https: https://sandboxapp.cloopen.com:8883
    def server
      @server ||= 'https://app.cloopen.com:8883'
    end

    def server=(server)
      @server = server
    end

    def account_sid
      @account_sid ||= 'your_account_sid'
    end

    def account_sid=(account_sid)
      @account_sid = account_sid
    end

    def auth_token
      @auth_token ||= 'your_auth_token'
    end

    def auth_token=(auth_token)
      @auth_token = auth_token
    end
    
    def app_id
      @app_id ||= 'your_app_id'
    end

    def app_id=(app_id)
      @app_id = app_id
    end
    
    def version
      @version ||= 'version'
    end

    def version=(version)
      @version = version
    end
  end
end
