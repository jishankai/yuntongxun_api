# YunTongXun Api

容联·云通讯SDK for Ruby

DONE: 短信
DONE: 语音验证码
DONE: 电话回拨
DONE: 外呼通知

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yuntongxun_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yuntongxun_api

## Usage

### Setting

Create `config\initializers\yuntongxun.rb`

```ruby
YunTongXun.setup do |config|
  config.server = 'https://app.cloopen.com:8883'
  config.account_sid = ''
  config.auth_token = ''
  config.app_id = ''
  config.version = '2013-12-26'
end
```

### SMS

```ruby
params = {
  to: '',
  templateId: '',
  datas: '',
}

YunTongXun::Sms.send(params)
```

### 语音验证

```ruby
params = {
  to: '',
  verifyCode: '',
}

YunTongXun::Voice.voice_verify(params)
```

### 电话回拨

```ruby
params = {
  from: '',
  to: ''
}

YunTongXun::Voice.double_call(params)
```

### 取消回拨

```ruby
params = {
  callSid: '',
  type: '',
}

YunTongXun::Voice.cancel_call(params)
```

### 外呼通知

```ruby
params = {
  to: '',
}

YunTongXun::Voice.landing_call(params)
```


## Contributing

1. [Fork it](https://github.com/skji/yuntongxun_api/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

