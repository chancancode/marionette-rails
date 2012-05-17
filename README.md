marionette-rails
================

[![Dependency Status](https://gemnasium.com/chancancode/marionette-rails.png)](https://gemnasium.com/chancancode/marionette-rails)

This gem is a wrapper for Derick Bailey's [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) library. It vendors the javascript library code for use with Rails' asset pipeline (Rails 3.1+).

## Dependencies

[Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) depends on Backbone (and Backbone's dependencies). These dependencies are not currently managed by the `marionette-rails` gem directly, because there exists multiple options to use Backbone with the Rails asset pipeline, such as [`backbone-on-rails`](https://github.com/meleyal/backbone-on-rails), [`backbone-rails`](https://github.com/aflatter/backbone-rails), [`rails-backbone`](https://github.com/codebrew/backbone-rails), just to name a few.

## Usage

Add it to your Gemfile:

    group :assets do
      # Your other asset gems (sass-rails, coffee-rails, etc)
      
      gem 'marionette-rails'
    end

Then add this to `app/assets/javascripts/application.js.coffee`:

    #= require backbone.marionette

Or, if you are using pure javascript, add this to `app/assets/javascripts/application.js`:

    //= require backbone.marionette


## Versioning

The gem will mirror the [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) versioning scheme. That is, version 0.8.2.* of `marionette-rails` would vendor [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) v0.8.2.

## Contributing

For bugs in [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) itself, head over to their [issue tracker](https://github.com/derickbailey/backbone.marionette/issues). If you have a question, post it at [StackOverflow under the `backbone.marionette` tag](http://stackoverflow.com/questions/tagged/backbone.marionette).

For bugs in this gem distribution, use the [GitHub issue tracker](https://github.com/chancancode/marionette-rails/issues). If you could submit a pull request - that's even better!

## Donations

If you're using Marionette and you're finding that it is saving you time and effort, then please consider donating to the upstream [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) project.

[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7SJHYWJ487SF4)

## License

This library is distributed under the MIT license. Please see the LICENSE file.