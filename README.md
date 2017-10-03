# Threejs::Rails

[Threejs](http://threejs.org/) is an awesome 3D `JavaScript` library that it easy to play with WebGL, i.e. 3D objects in the browser. See [documentation](http://threejs.org/docs/).

This rubygem will add `threejs` `r87` in your rails app via the asset-pipeline:

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'threejs-rails', git: 'git://github.com/marvindanig/threejs-rails.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install threejs-rails

## Usage

Add the following to your `app/assets/javascripts/application.js`:

//= require three

That's it. You're good to go with threejs on your rails app!

## Contributing

1. Fork it ( https://github.com/marvindanig/threejs-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
6. <a href = "mailto:marvin@marvindanig.com">Contact me</a> if I don't respond within 24 hours.
