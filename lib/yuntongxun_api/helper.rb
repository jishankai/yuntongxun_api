# coding: utf-8
require "json"
require 'digest'
require 'base64'
require 'net/http'
require 'net/https'

module YunTongXun
  module Helper
    # 获得响应结果
    def get_response(params)
      uri = URI.parse(url)
      https = Net::HTTP.new(uri.host, uri.port)
      https.use_ssl = true
      request = Net::HTTP::Post.new(url, headers)
      request.body = params.to_json
      response = https.request(request)

      YunTongXun.logger.info response.body
      return JSON.parse(response.body)
    end

    private
    def url
      "#{YunTongXun.config.server}/#{YunTongXun.config.version}/#{@accounts}/#{YunTongXun.config.account_sid}/#{@method}?sig=#{sign}"
    end

    def sign
      # REST API 验证参数，生成规则如下
      # 1.使用MD5加密（账户Id + 账户授权令牌 + 时间戳）。其中账户Id和账户授权令牌根据url的验证级别对应主账户。
      # 时间戳是当前系统时间，格式"yyyyMMddHHmmss"。时间戳有效时间为24小时，如：20140416142030
      # 2.SigParameter参数需要大写，如不能写成sig=abcdefg而应该写成sig=ABCDEFG
      Digest::MD5.hexdigest(YunTongXun.config.account_sid + YunTongXun.auth_token + timestamp).upcase
    end

    def headers
      # Accept String必选客户端响应接收数据格式：application/xml、application/json
      # Content-Type String必选类型：application/xml;charset=utf-8、application/json;charset=utf-8
      # Content-Length String必选Content-Length
      # Authorization String 必选 验证信息，生成规则详见下方说明
      # 1.使用Base64编码（账户Id + 冒号 + 时间戳）其中账户Id根据url的验证级别对应主账户
      # 2.冒号为英文冒号
      # 3.时间戳是当前系统时间，格式"yyyyMMddHHmmss"，需与SigParameter中时间戳相同。
      {
        'Accept' => 'application/json',
        'Content-Type' => 'application/json;charset=utf-8',
        'Authorization' => Base64.strict_encode64(YunTongXun.config.account_sid + ':' + timestamp)
      }
    end

    def timestamp
      Time.now.strftime("%Y%m%d%H%M%S")
    end

  end
end
