marionette-rails
================

This gem is a wrapper for Derick Bailey's [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) library. It vendors the javascript library code for use with Rails' asset pipeline (Rails 3.1+).

## Dependencies

[Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) depends on Backbone (and Backbone's dependencies). These dependencies are not currently managed by the `marionette-rails` gem directly, because there exists multiple options to use Backbone with the Rails asset pipeline, such as `[backbone-on-rails](https://github.com/meleyal/backbone-on-rails)`, `[backbone-rails](https://github.com/aflatter/backbone-rails)`, `[rails-backbone](https://github.com/codebrew/backbone-rails)`, just to name a few.

## Usage

Add it to your Gemfile:

    group :assets do
      # Your other asset gems (sass-rails, coffee-rails, etc)
      
      gem 'marionette-rails'
    end

Then add this to `app/assets/javascripts/application.js.coffee`:

    #= require marionette

Or, if you are using pure javascript, add this to `app/assets/javascripts/application.js`:

    //= require marionette


## Versioning

The gem will mirror the [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) versioning scheme. That is, version 0.8.2.* of `marionette-rails` would vendor [Backbone.Marionette](https://github.com/derickbailey/backbone.marionette) v0.8.2.