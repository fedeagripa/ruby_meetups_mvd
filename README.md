# Ruby Meetups MVD

[![CircleCI](https://circleci.com/gh/rootstrap/rails_api_base.svg?style=svg)](https://circleci.com/gh/rootstrap/rails_api_base)
[![Code Climate](https://codeclimate.com/github/rootstrap/rails_api_base/badges/gpa.svg)](https://codeclimate.com/github/rootstrap/rails_api_base)
[![Test Coverage](https://api.codeclimate.com/v1/badges/63de7f82c79f5fe82f46/test_coverage)](https://codeclimate.com/github/rootstrap/rails_api_base/test_coverage)

## How to use

1. Clone this repo
1. Install PostgreSQL in case you don't have it
1. Run `bootstrap.sh` with the name of your your project like `./bootstrap.sh my_awesome_project`
1. `rspec` and make sure all tests pass
1. `rails s`
1. You can now try your REST services!

## How to use with docker

1. Have `docker` and `docker-compose` installed (You can check this by doing `docker -v` and `docker-compose -v`)
2. Modify the following lines in the `database.yml` file:
  ``` yaml
  default: &default
    adapter: postgresql
    encoding: unicode
    pool: 5
    username: postgres
    password: postgres
    host: db
    port: 5432
  ```
3. Generate a secret key for the app by running `docker-compose run --rm --entrypoint="" web rake secret`, copy it and add it in your environment variables.
4. Run `docker-compose run --rm --entrypoint="" web rails db:create db:migrate`.
   1. (Optional) Seed the database with an AdminUser for use with ActiveAdmin by running `docker-compose run --rm --entrypoint="" web rails db:seed`. The credentials for this user are: email: `admin@example.com` ; password: `password`.
5. (Optional) If you want to deny access to the database from outside of the `docker-compose` network, remove the `ports` key in the `docker-compose.yml` from the `db` service.
6. (Optional) Run the tests to make sure everything is working with: `docker-compose run --rm --entrypoint="" web rspec .`.
7. Run the application with `docker-compose up`.
8. You can now try your REST services!

## Optional configuration

- Set your [frontend URL](https://github.com/cyu/rack-cors#origin) in `config/initializers/rack_cors.rb`
- Set your mail sender in `config/initializers/devise.rb`
- Config your timezone accordingly in `application.rb`.

## Code quality

With `rake code_analysis` you can run the code analysis tool, you can omit rules with:

- [Rubocop](https://github.com/bbatsov/rubocop/blob/master/config/default.yml) Edit `.rubocop.yml`
- [Reek](https://github.com/troessner/reek#configuration-file) Edit `config.reek`
- [Rails Best Practices](https://github.com/flyerhzm/rails_best_practices#custom-configuration) Edit `config/rails_best_practices.yml`
- [Brakeman](https://github.com/presidentbeef/brakeman) Run `brakeman -I` to generate `config/brakeman.ignore`
- [Bullet](https://github.com/flyerhzm/bullet#whitelist) You can add exceptions to a bullet initializer or in the controller

## Configuring Code Climate
1. After adding the project to CC, go to `Repo Settings`
1. On the `Test Coverage` tab, copy the `Test Reporter ID`
1. Set the current value of `CC_TEST_REPORTER_ID` in the [circle-ci project env variables](https://circleci.com/docs/2.0/env-vars/#setting-an-environment-variable-in-a-project)

## Code Owners

You can use [CODEOWNERS](https://help.github.com/en/articles/about-code-owners) file to define individuals or teams that are responsible for code in the repository.

Code owners are automatically requested for review when someone opens a pull request that modifies code that they own.
