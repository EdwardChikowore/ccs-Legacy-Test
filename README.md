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

### Set up for tests
In order to run some of the tests, you will need certain buildings with various details.

The following command will create the buildings you need in the specified environment (as long as the environment has all the addresses)

 ```bash
 bundle exec cucumber -p set_up DRIVER=chrome
 ```

### Branch structure
These tests are to be used mainly in two environments, CMPDEV and marketplace-preview.

As these can become out of sync, there are two branchs that should be used to run and update the tests.

- `master` should be kept up to date with the code deployed onto CMPDEV
- `preview-test` should be kept up to date with the code deployed onto marketplace-preview