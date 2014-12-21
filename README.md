# jekyll_embedly_r

An [embed.ly][embedly] Liquid tag for Jekyll.

## Installation

1. Install the `jekyll_embedly_r` gem or put `embedly.rb` in your `_plugins`
   directory.
1. Go to the embed.ly site, register an account and get your API key.
1. Add your site address to the referrer section e.g. 'localhost.com*'
   or 'www.mywebsite.com*'
1. Edit your `_config.yml` as described below.
1. Make use of the new `embedly`-Liquid tag somewhere on your site. `{% embedly  https://soundcloud.com/ryanburnette/mirror %}`
1. Compile your site.

## Setup

First, pass in your newly acquired API key like so:

```yaml
embedly:
  api_key: abcdefg123456780cafebabe101cat44
```

You can further customize your embeds adding host-specific parameters.

```yaml
embedly:
  api_key: abcdefg123456780cafebabe101cat44

  soundcloud:
    width: 500px

  vimeo:
    width: 500px
    vimeo_color: FF0000
```

You can also pass along parameters to individual embeds, e.g.

```liquid
{% embedly https://vimeo.com/94370991, vimeo_width: 720px %}
```

For a list of supported parameters, please have a look at
[embed.ly’s documentation][docs] as well as the documentation for the oEmbed
implementation of the specific hosts.

Provider specific parameters are currently not working properly across the
board. Please let me know what works and what doesn't.

## Output

Your embed will be wrapped inside a `div`-tag that has classes matching the
embeds type, provider as well as the generic `embed`.

## History

* v0.2.0 2014-12-20
  * Initial version after fork from [https://github.com/robb/jekyll-embedly-client](https://github.com/robb/jekyll-embedly-client)
  * Fix bugs in API call
  * Fall back to card if link isn't explicitly supported

## Contributing

Open an [Issue](https://github.com/ryanburnette/jekyll_embedly_r/issues) or bring a [Rull Request](https://github.com/ryanburnette/jekyll_embedly_r/pulls)!

## License

[Apache2](https://github.com/ryanburnette/jekyll_embedly_r/blob/master/LICENSE)

[docs]: http://embed.ly/docs/endpoints/arguments
[embedly]: http://embed.ly
