# Mattes migrate

Docerized mattes/migrate tool

## Usage

### Generic usage

```
docker run \
  -v {migration}:/migration \
  brainly/mattes-migrate \
  {parameters}
```

Where:

- {migration} - path to directory where migration scripts are kept locally
- {parameters} - parameters passed-through to migrate command

### Running migration

```
docker run \
  -v {migration}:/migration \
  brainly/mattes-migrate \
  -path=/migration \
  -database=postgres://user:password@hostname:5432/database \
  up
``` 

For the full list of commands check: https://github.com/mattes/migrate/tree/master/cli#usage

## Available drivers

- PostgreSQL
