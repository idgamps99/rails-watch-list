# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<!-- User Actions -->
As a user, I can see all my movie lists
As a user, I can create a movie list
As a user, I can see the details of a movie list
As a user, I can bookmark a movie inside a movie list
As a user, I can destroy a bookmark

<!-- Associations -->
A list has many bookmarks
A list has many movies through bookmarks
A movie has many bookmarks
A bookmark belongs to a movie
A bookmark belongs to a list
You can’t delete a movie if it is referenced in at least one bookmark.
When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
