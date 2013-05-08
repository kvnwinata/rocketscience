Rocketscience::Application.routes.draw do
  
  root :to => 'home#index'

  # users
  match 'login' 		    => 'users#login' # login page
  match 'logout'        => 'users#logout' 
  match 'users/prompt' 	=> 'users#prompt' # prompting user to signup: return form?
  match 'users/profile' => 'users#profile' # user's profile page: currently John Smith's
  match 'guest'         => 'users#guest' # browse as guest.

  match 'users' 		                     => 'users#new' 
  match 'login/submit'                   => 'users#login_submit'
  match 'login/submit/:email/:password'  => 'users#login_submit'

  # images
  match 'images/get_category'   => 'images#get_category' 
  match 'images/get_inkbox'     => 'images#get_inkbox'
  match 'images/like' 	        => 'images#like'
  match 'images/unlike'         => 'images#unlike'
  match 'images/analyze'        => 'images#analyze'

  # artists
  match 'artists/search' 		       => 'artists#search' # the artist search page
  match 'artists/info' 	           => 'artists#info'   # the artist info when an artist's tab is clicked: ajax
  match 'artists/info/:artist_id'  => 'artists#info'
  match 'artists/like/:artist_id'  => 'artists#like'   # liking an artist, update db
  match 'artists/unlike/:artist_id'=> 'artists#unlike' # disliking an artist, update db
  match 'artists/like'  => 'artists#like'   # liking an artist, update db
  match 'artists/unlike'=> 'artists#unlike' # disliking an artist, update db

  match 'artists/get_category'     => 'artists#get_category'

  # random example pages and main
  match 'home' 			=> 'home#index'   # the main page/home: redirect to login when not signed in or not 'as guest'
  match 'example' 	=> 'home#example' # an example for testing/debugging only

  match 'clear'     => 'users#clear'

end
