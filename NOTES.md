TikTok Notes - Search Through All my "Liked" TikToks

GET /register
-sign up form

POST /users
-create the user in database, validation

GET /login
-login form
-login w google

POST /login
-create the session and redirect

GET /categories/new
-show a form to add a category

POST /categorys
-take the data and save it to the database

GET /categories
-show list of all categories

GET /categories/:id
-show all tiktoks(description & link) in the category
-favorite/delete tiktok

PATCH /categories/:id
