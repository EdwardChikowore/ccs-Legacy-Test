# ccs-FM-Test

### Running Automation tests

This repository contains automation test setup with ruby + capybara + site-prism +selenium webdriver + cucumber

* [Cucumber](https://cucumber.io/)
* [Capybara](https://rubygems.org/gems/capybara/versions/2.7.1)
* [Site-prism](https://rubygems.org/gems/site_prism/versions/2.9)
 
## Installation on MAC

Install ruby dependencies
```sh
$ brew install ruby
$ gem install bundler
$ bundle install
```

Install chromedriver:

```sh
brew cask install chromedriver
```


## Running Test on default environment

Command to run all feature test on Chrome-headless

```bash
bundle exec cucumber
```
Command to run all accessibility test on Chrome-headless

```bash
bundle exec cucumber -p accessibility
```

Command to run all feature test on Chrome

```bash
bundle exec cucumber DRIVER=chrome
```
 
 Command to run all accessibility test on Chrome
 
 ```bash
 bundle exec cucumber -p accessibility DRIVER=chrome
 ```

### Running test on specific environment

```bash
bundle exec cucumber TEST_ENV=preview 
```

Config for the different test environments is stored in config/environment.yml