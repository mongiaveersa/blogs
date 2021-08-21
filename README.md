App
    Assests- To store our static assets i.e. images and style sheets. Images in the layout of our applications.
    Stylesheets: To store our css and styles.
    Application.css - This is the manifest file.

    Channels- Where we work with application cables. For ex. chat.
    Controller- All our controllers are housed here. All other controller inherit ApplicationController
    Helpers- Where we have our helper functions.
    Javascripts- Packs->application.js- this is our js manifest file.
    Models: Where we store all our models.(Inherit ApplicationRecord)
    Views: This is the frontend of the webapp. (<%= yield %> by default all the views are displayed using the yield function)

Config: 
    Environments: Different configurations for different environment. 
    Credentials.
    Routes.rb - 

DB: where development and test data is stored.

Gemfile- ALl the gems are listed here.
Gemfile.lock- THis occurs when we run bundle install for the gemfile. (Metadata of the gemfile)
package.json - Lists the dependencies added using Yarn

Starting with a dot(.)- These are hidden files.

<!-- Views-> Application.html.erb -->

articles show page
<div id="page-content">
<h1 class="text-center mt-4"> Article listing</h1>

<div class="container">
<% @articles.each do |ar| %>
<div class="row justify-content-md-center">
    <div class="col-8 mt-4">
    <div class="card text-center shadow mb-5 bg-white rounded">
        <div class="card-header font-italic">
        by Shubham Mongia
        </div>
        <div class="card-body">
        <h5 class="card-title"><%= link_to ar.title, article_path(ar), class: "text-success" %></h5>
        <p class="card-text"><%= truncate(ar.description, length: 50) %></p>

        <%= link_to 'View', article_path(ar), class:"btn btn-outline-success" %>
        <%= link_to 'Edit', edit_article_path(ar), class: "btn btn-outline-info" %>
        <%= link_to 'Delete', article_path(ar), method: :delete, data: { confirm:"Are you sure?"}  %>
    </div>

        <div class="card-footer text-muted">
        <small>Created ago <%= time_ago_in_words(ar.created_at) %>,
            edited ago <%= time_ago_in_words(ar.updated_at) %> </small>
        </div>
    </div>
</div>
</div>
<% end %> 
</div>
<p>
    <%= link_to "Create new article", new_article_path %>
</p>

</div>


Index html


<div id="page-content">
<div class="container" id="home-container">
    <div class="jumbotron text-center text-white">
    <h1 class="display-4">Veersa Blog</h1>
    <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
    <hr class="my-4">
    <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
    <a class="btn btn-success btn-lg" href="#" role="button">Sign up</a>
  </div>
</div>
</div>


<footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white">
    <div class="container text-center">
      <small>Copyright &copy; Veersatech</small>
    </div>
  </footer>

  <!-- <%= link_to 'Articles listing', articles_path %>

|

<%= link_to 'About page', about_path %> -->



_form
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" id="logo" href="/">Veersa blogs</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/about">About</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="/articles" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Articles
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="/articles/new">New articles</a></li>
              <li><a class="dropdown-item" href="/articles">Show all</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>