# README

## Setup

```
bundle
bin/rake db:setup
bin/rails s
`

Navigate to [http://localhost:3000/travel-guides/posts/caribbean/barbados/overview](http://localhost:3000/travel-guides/posts/caribbean/barbados/overview).

Works because of this in the `routes.rb`:

```ruby
get 'travel-guides/posts/:id', to: 'travel_guides/posts#show', id: /.*/
```