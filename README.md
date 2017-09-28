# nis-cli

[![Join the chat at https://gitter.im/44uk/nis-ruby](https://badges.gitter.im/44uk/nis-ruby.svg)](https://gitter.im/44uk/nis-ruby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

<img src="https://cloud.githubusercontent.com/assets/370508/24320282/a332d238-1175-11e7-96dc-75bc30e562d2.png" width="280" height="280" alt="nem" align="right" />

Ruby CUI client for the NEM Infrastructure Server(NIS) API.

It is dependent on [nis-ruby.gem](https://github.com/44uk/nis-ruby).

* [NEM \- Distributed Ledger Technology \(Blockchain\)](https://www.nem.io/)
* [NEM NIS API Documentation](https://nemproject.github.io/)
* [NEM Forum](https://forum.nem.io/)

## Installation

```bash
$ gem install nis-cli
```

## Usage

```bash
$ nis status
# => {"code":6,"type":4,"message":"status"}

$ nis heartbeat
# => {"code":1,"type":2,"message":"ok"}

$ nis request get account/get --params=address:TALICELCD3XPH4FFI5STGGNSNSWPOTG5E4DS2TOS
# => [AccountMetaDataPair structure]

$ nis request get account/harvests --params=address:TALICELCD3XPH4FFI5STGGNSNSWPOTG5E4DS2TOS hash:81d52a7df4abba8bb1613bcc42b6b93cf3114524939035d88ae8e864cd2c34c8
# => [Array <HervestInfo structure>]
```

## Connection

You can choose nodes from [NEM Node Rewards](https://supernodes.nem.io/).

### Environment Variable

```bash
$ export NIS_URL=http://23.228.67.85:7890
$ nis heartbeat # => {"code":1,"type":2,"message":"ok"}
```

## Feedback and Contact

For further development of nem with ruby, feel free to send me your feedback!

* [@44uk_i3 - Twitter](https://twitter.com/44uk_i3)
* [44uk/nis-ruby - gitter](https://gitter.im/44uk/nis-ruby)

## Contributing

Bug reports and pull requests are welcome on GitHub at [44uk/nis-cli](https://github.com/44uk/nis-cli). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](LICENSE).

