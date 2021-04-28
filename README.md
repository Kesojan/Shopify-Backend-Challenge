# Lense

Lense is a place for creators to explore freely and share their photography with others

Built for the Shopify Backend Challenge 2021!

## Demo

## Build Locally

### Prerequisites
* Ruby 2.6.6
* Rails 5.2.5
* [yarn](https://classic.yarnpkg.com/en/docs/install/)
* [Active Storage](https://github.com/rails/rails/tree/main/activestorage)

The following steps assume that all dependencies are present.

- Install loaded packages

```bash
bundle install 
```
- Generate migration for Active Storage
```bash
rails active_storage:install
```
- Create + setup the database

```bash
rake db:create
rake db:migrate
```
- To ensure files are stored locally

```bash
config.active_storage.service = :local
```
- Start the Rails server

```bash
rails s
```

## Open-source/Technologies used
### Backend
* [Devise](https://github.com/heartcombo/devise) for user authentication
* [Active Storage](https://github.com/rails/rails/tree/main/activestorage) for storing and uploading images

### Frontend
* Bootstrap for UI
* Custom CSS for styling
* [Active Storage Drag & Drop](https://github.com/rails/rails/tree/main/activestorage) for quick way to upload pictures

## Resources

This was my first time using Ruby and Ruby on Rails. I used the following resources in conjunction with articles to help me make this app.
* [Active Storage Documentation](https://edgeguides.rubyonrails.org/active_storage_overview.html)
* [Devise Authentication](https://guides.railsgirls.com/devise)
* [Rails Guide](https://guides.rubyonrails.org/v5.0/getting_started.html)
* [Ruby on Rail Architecture](https://www.educative.io/blog/ruby-on-rails)