MiniMagick integration for Jekyll
=================================

This gem allows you to easily use MiniMagick to crop and resize images in your
Jekyll project, according to a preset defined in your config file.

Basic Setup
-----------
Install the gem:

	[sudo] gem install jekyll-minimagick

In a plugin file within your Jekyll project's _plugins directory:

	# _plugins/my-plugin.rb
	require "jekyll-minimagick"

Define presets in your _config.yml file, like this:

	# _config.yml
	mini_magick:
		thumbnail:
			source: img/photos/original
			destination: img/photos/thumbnail
			resize: "100x100"
		medium:
			source: img/photos/original
			destination: img/photos/medium
			resize: "600x400"

This configuration will create a 100x100 thumbnail for each image in 
_img/photos/original_ and put it in _\_site/img/photos/thumbnail_ and a 600x400
image in _\_site/img/photos/medium_.

Bundler Setup
-------------
Already using bundler to manage gems for your Jekyll project?  Then just add

	gem "jekyll-minimagick"

to your gemfile and create the following plugin in your projects _plugins 
directory.  I've called mine bundler.rb.  This will automatically require all 
of the gems specified in your Gemfile.

	# _plugins/bundler.rb
	require "rubygems"
	require "bundler/setup"
	Bundler.require(:default)
