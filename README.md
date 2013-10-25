---
tags: student-project, sinatra, sequel-orm, rspec
language: ruby
---

# Sinatra Students

You're going to build a full CRUD application for the Student Website, powered by Sinatra.

# Setup

## Reading the Codebase

It's a complex project and we've provided you with the skeleton of the project.

```
app/
  concerns/
  controllers/
    application_controller.rb
    students_controller.rb
  models/
    student.rb
  views/
    students/
      index.erb
config/
  environment.rb
coverage/
db/
  migrate/
    01_create_students.rb
lib/
  student_scraper.rb
public/
spec/
  controllers/
    students_controller.rb
  models/
    student_spec.rb
  requests/
  spec_helper.rb
tmp/
config.ru
Gemfile
Guardfile
Rakefile
```

It's important the before you start the project, each of you read the codebase as it currently stands. Every file we've given you has comments in it explaining how it works.

## Bundle

Make sure to run `bundle install ` before doing anything.

## Running the Test Suite

You can run the test suite with:
```bash
rspec
```

Additionally, you should notice that a coverage report is generated via SimpleCov. `open coverage/index.html` to see how your test coverage progress as you complete the assignment.

### Autotest via Guard

The application is setup to use `guard` to auto-run the test suite on most file saves. Start guard with:

```bash
guard
```

## Running Migrations

Migrations are a mechanism for creating our schema through code rather then sequel. To trigger the migration files to run, we use a rake task, defined in the `Rakefile`, `rake db:migrate`. That will apply all unapplied, or unrun, migrations to the database. There are other tasks but don't worry about them.

## Racking Up the Application

Start the application with `rackup`

# Objectives

## Integrating a Student Scrape

You need to integrate a scrape class into this project to populate your development database.

We suggest using (StudentScraper)[https://github.com/flatiron-school/student-scraper-db-003-unit-1/blob/master/lib/models/student_scraper.rb] as a basis for your scrape.

The scrape can be run via running the rake task scrape_students.

```bash
rake scrape_students
```



## The Student Index and the Student Profile

## Creating New Students

## Updating Students