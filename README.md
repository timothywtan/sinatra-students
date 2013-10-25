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

Start the application with `rackup`.

# Objectives

## Integrating a Student Scrape

You need to integrate a scrape class into this project to populate your development database.

We suggest using (StudentScraper)[https://github.com/flatiron-school/student-scraper-db-003-unit-1/blob/master/lib/models/student_scraper.rb] as a basis for your scrape.

The scrape can be run via running the rake task scrape_students.

```bash
rake scrape_students
```

Try running the scrape immediately (assuming you first followed the instructions above about bundling, migrating, and running the test suite).

You will need to add migrations to create the columns/attributes needed for the scrape class to correctly populate a student's data.

So for instance, the first error you'll see is:

```bash
rake scrape_students
rake aborted!
undefined method `profile_image=' for #<Student @values={:id=>1, :name=>"Alex Chiu"}>
```

While you could solve this with `attr_accessor :profile_image`, that will not persist the data to your database. Instead, add a new migration to the `db/migrate` folder, maybe named `02_add_profile_image_to_students.rb`. That file should contain:

```ruby
Sequel.migration do
  up do 
    add_column :students, :profile_image, Strings
  end

  down do
    remove_column :students, :profile_image
  end
end
```

Then you can migrate your database via `rake db:migrate`.

Now re-run the `rake scrape_students` task and you should get more errors about the Student table/class not having those attributes.

Go into the `lib/student_scraper.rb` and find all the missing attributes. Try to build a migration `03_add_student_attributes.rb` that gets all the attributes you'll need to add. If you miss a few and you've already run the migrations, you can always `rake db:reset` to start fresh.

Feel free to write tests to make sure that the student has those attributes but as they are provided by Sequel, they are already tested. We only test code we write (like the future `Student#slug` method).

When you are done, you should be able to `open db/students-development.db` and see a populated students table.

The scrape should force you to construct a pretty solid Student ORM class.

## The Student Index and the Student Profile



## Creating New Students

## Updating Students