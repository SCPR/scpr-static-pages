# SCPR Static Pages

A front-end project with a Middleman workflow optimized for or managing front-end builds of KPCC static landing pages.

### Getting Started

This project depends on [Middleman](https://middlemanapp.com/), a static site generator. You'll need Ruby >= 1.9.3 and the Bundler gem installed on your machine in order to run it. Once you've met those requirements, run `gem install middleman`. 

Now `cd` into the project directory and run `bundle install` to install any remaining gem dependencies. Once that's done, run `bundle exec middleman server`, which will start up Middleman and host your project on a local web server running at http://0.0.0.0:4567. Read more about that on the [Middleman docs](https://middlemanapp.com/basics/development_cycle/).

Once you're done building and your site is ready to deploy, you'll want to run the `bundle exec middleman build` command, which takes your source files and builds them into static files ready for serving on the web. More explanation can be found [here](https://middlemanapp.com/basics/build_and_deploy/).

### Some Notes About Front-End Dependencies and Templating

This project uses SCSS for stylesheet authoring, and Slim for templating. These are opinionated choices, and Middleman doesn't force you to use them, but you'll have to make some `config.rb` changes if you want to use plain HTML, or some other templating system like HAML. 

### Organization

The project deviates slightly from Middleman conventions about directory structure, in that there are no global asset directories inside `source/`. Instead, each page's assets are stored in their own local subdirectories, since each of these pages is a unique snowflake and they don't share much in common in terms of code or design.


