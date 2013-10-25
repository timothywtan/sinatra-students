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

## Racking Up the Application

# Objectives