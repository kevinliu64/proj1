# Q0: Why is this error being thrown?
The Pokemon model and controller are not yet made.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In the HomeController we are selecting all pokemon without a trainer and then select a random one from there which we pass to the view. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
capture_path(id: @pokemon) returns the url to the route with the prefix capture and id: @pokemon allows to access the pokemon ID through params. It also creates a button with the text "throw a pokeball", says it's of class "button medium" and says it's a patch http request.

# Question 3: What would you name your own Pokemon?
I can name them whatever I want (their default pokemon name).

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the trainer_path which gives me a path to the trainer with a specified id. The path needs the current pokemon trainer's id.


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Since the form has access to flash, the flash is given to the form to render


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
