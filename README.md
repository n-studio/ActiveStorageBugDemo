# ActiveRecord::StatementTimeout when combining validation and file storage on multiple databases

## Steps to reproduce

1. Create a model with a `belongs_to` validation and a file storage
2. Link ActiveStorage to the same database as the model

## Expected behavior

The model should be saved without any error

## Actual behavior

```
ActiveRecord::StatementTimeout (SQLite3::BusyException: database is locked)
Caused by: SQLite3::BusyException (database is locked)

Information for: ActiveRecord::StatementTimeout (SQLite3::BusyException: database is locked):
  

Information for cause: SQLite3::BusyException (database is locked):
  
app/controllers/artworks_controller.rb:35:in `update'
```

## Notes

1. Removing the `belongs_to` validation solves the issue
2. Not specifying the database for ActiveStorage also solves the issue
