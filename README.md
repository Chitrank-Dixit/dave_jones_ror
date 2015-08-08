Ruby beginning

install ruby , rails and bundler

make your first ruby project using

$ ruby new <your app name> (can be more parameters like --skip-javascript, --database=<your_db> etc)

Now the ruby application structure how things are specified in Ruby on Rails framework
(learn ruby if not learnt before)

Now generate controller in ruby 
$ ruby generate controller Say hello (more class method or actions can be made by just spacing and specifying
$ ruby generate controller Chitrank speak teack play sing (Chitrank as controller with 4 actions)

This would generate the controller named SayController which inherits ApplicationController (the default controller created when application is created), hello would be a class method of Say controller

after doing this have a look at config/routes.rb, controllers/say_controller.rb, controllers/chitrank_controller.rb, views/chitrank/chitrank.html.erb, views/say/say.html.erb and work with these files

to have a look at all the routes generate so far with the controller we have defined till now just run 

$ rake routes

this command will show all the routes generated using rake till now

Prefix Verb URI Pattern               Controller#Action
chitrank_teach GET  /chitrank/teach(.:format) chitrank#teach
chitrank_speak GET  /chitrank/speak(.:format) chitrank#speak
  chitrank_dig GET  /chitrank/dig(.:format)   chitrank#dig
     say_hello GET  /say/hello(.:format)      say#hello
    say_byebye GET  /say/byebye(.:format)     say#byebye
 say_something GET  /say/something(.:format)  say#something

above is the output of the rake routes, now it makes a prefix here so if suppose if used chitrank_teach_path (now /chitrank/teach can be reached) , so these generates prefixes which are the method names that we can use in our application


Layouts and views in ror
==========================

just need to paste all static files in app/assets now just include the part of the page in views/layouts/application.html.erb that would show up same thoough out, and do not include any area which is dynamically changing.

Now comes the part of css and js. Now the embedded ruby in application.html.erb include two manifest files ( that would include other files)
one for css and other for js. we just need to incliude application.css and application.js in application.html.erb and all of the other css and js files gets included into our layout.

ruby parser treat *= as code in application.css, similarly ruby parser treats //=  as code in application.js

Now including image ror assumes that all the images exists only in assets/images only and there it start searching for the image we just need to write, <%= image_tag "image.jpg" %>

two ways to implement the hash new way :size "900x200" or old way size => "900x200"


Navigation in Ror
================================

Navigation can be acheived by replacing the <a href links> </a> with the ruby powered <%= link_to "Home", page_home_path %>. There these kind of links can be used for making a navigation in ruby on rails.

partials ( these are the piece of code that may be repetative or non repetative)

Layouts and Helpers
=====================================

*= require_self includes itself
*= require_tree . includes all the css, scss files present in the rails project
Now we do not need all the .css files into our project we do not need print.scss
so we need to change out app/assets/stylesheets/application.css file