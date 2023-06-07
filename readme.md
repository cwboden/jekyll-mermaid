# Jekyll-mermaid

A [Jekyll](http://jekyllrb.com/) plugin to simplify the creation of [mermaid](https://github.com/knsv/mermaid) diagrams and flowcharts in your posts and pages.


## Installation

1. Install the gem:
  ```bash
  gem install jekyll-mermaid
  ```

2. Add the gem to your Jekyll `_config.yml`:
  ```ruby
  gems: [jekyll-mermaid]
  ```

Please see the [Jekyll documentation](http://jekyllrb.com/docs/plugins/#installing-a-plugin) for more installation options.


## Config

You'll need to update your `_config.yml` with the URL of the [mermaid](https://mermaid.js.org) source javascript file you want to use (relative or CDN). The script is loaded as a module, so specify the `esm` version.
Optionally, you can also set a [theme](https://mermaid.js.org/config/theming.html#available-themes).

```ruby
mermaid:
  src: 'path/to/mermaid.esm.[min].mjs'
  theme: 'dark'
```


## Usage

Simply include the [jekyll-mermaid](https://github.com/jasonbellamy/jekyll-mermaid) block helper in any of your templates.

```liquid
{% mermaid %}
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
{% endmermaid %}
```

Please see the [mermaid documentation](https://github.com/knsv/mermaid/wiki) for more examples.


## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality.


## License
Copyright (c) 2014 [Jason Bellamy ](http://jasonbellamy.com)
Licensed under the MIT license.
