Rocketscience::Application.routes.draw do
  
  root :to => 'home#index'

  # users
  match 'login' 		=> 'users#login' # login page
  match 'users/prompt' 	=> 'users#prompt' # prompting user to signup: return form?
  match 'users/profile' => 'users#profile' # user's profile page: currently John Smith's

  match 'users' 		=> 'home#index' # skip signup, this url is the same as signup/submit
  #match 'users' 		=> 'users#new' 
  match 'login/submit'	=> 'home#index' # skip login
  #match 'login/submit'	=> 'users#login_submit'
  match 'guest'			=> 'home#index' # default as logged in.

  # images
  match 'images/like' 	=> 'images#like'
  match 'images/unlike' => 'images#unlike'
  match 'images/analyze'=> 'images#analyze'

  # artists
  match 'artists/search' 		      => 'artists#search' # the artist search page
  match 'artists/info' 	          => 'artists#info'   # the artist info when an artist's tab is clicked: ajax
  match 'artists/info/:artist_id' => 'artists#info'
  match 'artists/like' 	          => 'artists#like'   # liking an artist, update db
  match 'artists/unlike'          => 'artists#unlike' # disliking an artist, update db

  # random example pages and main
  match 'home' 			=> 'home#index'   # the main page/home: redirect to login when not signed in or not 'as guest'
  match 'example' 	=> 'home#example' # an example for testing/debugging only

end
