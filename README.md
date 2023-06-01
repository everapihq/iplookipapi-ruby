<p align="center">
<img src="https://app.iplookupapi.com/img/logo/iplookupapi.png" width="300"/>
</p>

# iplookupapi-ruby

iplookupapi-ruby is the official Ruby Wrapper around the [iplookupapi](https://iplookupapi.com) API.

Â

## Installation

Add this line to your application's Gemfile:

    gem 'iplookupapi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iplookupapi

## Configuration

You will need your apikey to use iplookupapi, you can get
one [https://app.iplookupapi.com/register](https://app.iplookupapi.com/register).

Create an instance and pass your api key like here:

    ip = iplookupapi::Endpoints.new(:apikey => 'APIKEY')

## Usage & Endpoints

Use the instance to call the endpoints

#### Status

Returns your current quota

    ip.status()

#### Info

Checks the provided ip address (both v4 & v6 formats) and returns all available information.

    ip.info(ip, language)

| Parameter | Data type | Mandatory | Description |
-----------| --- | ----------- | --- | ----------- |
| ip        | string, Path Parameter | yes | The ip address you want to query |
| language  | string | no | An ISO Alpha 2 Language Code for localising the ip data |

You can find further information on https://iplookupapi.com/docs/

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Bug reports and pull requests are welcome on GitHub at https://github.com/everapihq/iplookupapi-ruby. This project is
intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct](https://github.com/everapihq/iplookupapi-ruby/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the iplookupapi project's codebases, issue trackers, chat rooms and mailing lists is expected to
follow the [code of conduct](https://github.com/everapihq/iplookupapi-ruby/blob/master/CODE_OF_CONDUCT.md).
