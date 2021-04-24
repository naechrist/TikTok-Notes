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

POST /categoriess
-take the data and save it to the database

GET /categories
-show list of all categories

GET /categories/:id
-show all tiktoks(description & link) in the category
-favorite/delete tiktok

PATCH /categories/:id

ROUTES

- users_path - users#index
- new_user_path - users#new
- edit_user_path - users#edit
- user_path - users#show
- tik_toks_path - tik_toks#index
- new_tik_tok_path - tik_toks#new
- edit_tik_tok_path - tik_toks#edit
- tik_tok_path - tik_toks#show
- categories_path - categories#index
- new_category_path - categories#new
- edit_category_path - categories#edit
- category_path - categories#show
- login_path - sessions#new
- signup_path - users#new
- logout_path - sessions#destroy
- users_tik_toks_path - users#tik_toks
