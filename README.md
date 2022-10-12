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
# full-stack-david-michy

# rails g model Blog title:string content:string
# rails generate controller Blog
```ruby
  def index
    @blogs = Blog.all
  end
```
Has a route for index
```ruby
  get 'blogs' => 'blog#index'
```
Has a view for index

# created file inside of views called index.html.erb
```ruby
<%= @blogs %>
```
Can see all the blog post titles on the landing page of the application
```ruby
  def show 
    @blog = Blog.find(params[:id])
  end

    root 'blog#index'
    get 'blogs/:id' => 'blog#show' 
```
    # Competed in terminal
# Blog.create(title:'Traveling the World', content:'I went to Paris')
# Blog.create(title:'How to peel a banana', content:'First have a ban
# ana')
# Blog.create(title:'All about tacos', content:'I am a taco expert')

Has a controller action for show
```ruby
  def show 
    @blog = Blog.find(params[:id])
  end

```
Has a route for show
```ruby
  get 'blogs/:id' => 'blog#show', as: 'blog' 
```
Has a view for show
# created new file show.html.erb
```ruby
<h3><%= @blog.title %></h3>
  <br/>
<p> About this blog: 
 <%= @blog.content %></p>
```

Can navigate back from the show page to the landing page
# <p><%= link_to 'Back to Home', blogs_path %></p>
