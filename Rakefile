require 'bundler'
Bundler::GemHelper.install_tasks
require 'open-uri'
require 'json'


# Helper Functions
def name
  @name ||= Dir['*.gemspec'].first.split('.').first
end

def version
  line = File.read("lib/#{name}/version.rb")[/^\s*VERSION\s*=\s*.*/]
  line.match(/.*VERSION\s*=\s*['"](.*)['"]/)[1]
end

def latest_tag
  tags = JSON.parse(open('https://api.github.com/repos/marionettejs/backbone.marionette/tags').read)
  tags.sort!{|a,b| b["name"] <=> a["name"]}
  tags.first
end

namespace :marionette do

  desc "Fetches and displays the latest backbone.marionette tag"
  task :latest do
    tag = latest_tag
    puts "The latest backbone.marionette tag is #{tag["name"]} with commit #{tag["commit"]["sha"]}"
  end

  desc "Updates the vendored backbone.marionette version to the latest tag"
  task :update do
    tag = latest_tag

    # Pull attributes we need
    name = tag["name"]
    sha = tag["commit"]["sha"]

    # Cleanup the name
    name.gsub!(/^v/, '')
    name.gsub!(/-/, '.')

    if name == version
      puts "Gem version #{version} matches the latest backbone.marionette version #{name}"
      exit
    end

    # Update marionette
    puts "Updating marionette..."
    url = "https://raw.github.com/marionettejs/backbone.marionette/#{sha}/lib/backbone.marionette.js"
    Dir.chdir './vendor/assets/javascripts' do
      `curl -O #{url}`
    end

    # Update version file
    puts "Updating version.rb..."
    `sed -i "" "s/    VERSION = '.*'/    VERSION = '#{name}'/g" lib/marionette-rails/version.rb`
  end
end
