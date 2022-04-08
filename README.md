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

## Environment configuration
The environment variables are kept in `config/environment.<environment>.yml`.
When running the tests locally you need to have the `config/environment.local.yml` file with the correct credentials.
You will need to speak to a member of the project team to get the up to date crednetials.

The `config/environment.test.yml` holds the configuration required by [travis](https://app.travis-ci.com/github/Crown-Commercial-Service/ccs-FM-Test) to run the tests.
The account usernames and passwords are stored securely on travis and **should not** be added to the config file.

## Running the tests
The basic command to run the tests is

```bash
bundle exec cucumber
```

However, there are additional options that can be added to run with different configurations

### Chrome driver
We use **Chrome driver** as the browser to run our tests.
By default, our tests are run in the headless mode.
To change the mode the driver runs in, change the environment variable `DRIVER=chrome` which will then open a browser to allow you to see the tests being run.

### Running a test in a specific environment
By default the test will run in the CMPDEV environment.
To change which environment the test will run, you can change the `TEST_ENV` environment variable.
The options are:
- `local` -> runs on your local machine
- `cmpedv` -> runs in the [cmpdev environment](https://cmp.cmpdev.crowncommercial.gov.uk/facilities-management/RM3830/start)
- `preview` -> runs in the [preview environment](https://marketplace.preview.crowncommercial.gov.uk/facilities-management/RM3830/start)

### Running different profiles
If no profile option is given, then the default profile.
Different profiles can be specified by running the command

```bash
bundle exec cucumber -p <profile_name>
```

The following table lists the different profiles available to use:
| Profile       | Description |
| ------------- | ----------- |
| default       | Will run all the features, except tests for accessibility, setup and production, in a headless browser and will generate a report that can be found timestamped in `docs/reports` |
| accessibility | Will run the accessibility tests in the `features/accessibility` folder. We use the `axe` gem to analyse our pages and report any issues |
| set_up        | Will create all the buildings needed to run the tests on your local machine (see [Set up for tests](#set-up-for-tests)) |
| clean_up      | Will delete all the procurements created during the tests (see [Clean up after tests](#clean-up-after-tests)) |
| travis        | Used for running the test on travis, runs the same feature tests as the default profile excluding the bulk upload tests |
| prod_test     | Used for running a small subset of tests on the production environment after a release |

### Running bulk upload tests
The bulk upload section of the application allows the user to upload a spreadsheet with information to the service where it will be extracted into our system.
For security reasons, the spreadsheets used in the automation tests are not stored on this repo.
To obtain the spreadsheets, speak to another member of the project who can provide you with the spreadsheets.
Place these spreadsheets in a the `bulk_upload_spreadsheets` folder

## Set up for tests
In order to run some of the tests, you will need certain buildings with various details.

The following command will create the buildings you need in the specified environment (as long as the environment has all the postcodes with regions)

 ```bash
 bundle exec cucumber -p set_up
 ```

 You will also need to have the details setup for the test user.
 These are:
 | Detail                 | Value                             |
 | ---------------------- | --------------------------------- |
 | Name                   | Automation Test                   |
 | Job title              | Test Analyst                      |
 | Telephone number       | 07749228347                       |
 | Organisation name      | CCS                               |
 | Organisation address   | 2 Marylebone Road, London NW1 4DF |
 | Sector                 | Central government                |

 ## Clean up after tests
After running all the tests there can be a lot of data left over that is not required.
This feature was created to remove as much of this data as possible from the environment where it is run.

The following command will delete the procurements (that can be deleted) for both accounts used in the testing
 ```bash
 bundle exec cucumber -p clean_up
 ```
