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