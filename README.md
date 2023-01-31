# Character Stat Maker

## Description
This application is designed to generate a simple user list as well as randomly generated video game character stats. The data used for this project is base loosely off the video game [Fire Emblem](https://en.wikipedia.org/wiki/Fire_Emblem).

The site allows you to create your own username as well as randomly generated characters for each user. Users have the ability to change the names and jobs of each character but they are not allowed to change the stats of the characters.

This particular repository hosts the backend of the application. It uses ActiveRecord with SQL and Sinatra to host a server on your local machine. You can use the randomly generated seed to play around with the application.

[Front End Repository](https://github.com/ericksong91/character-stat-maker-FE)

[Back End Repository](https://github.com/ericksong91/character-stat-maker-BE)

## Usage

- To run the server, type the following into the console:
    1. rake db:migrate db:seed
    2. rake server

- To regenerate the seed, type the following into the console:
    1. rake db:drop
    2. rake db:migrate db:seed
    3. rake server

- GET: 
    - All Users (http://localhost:9292/users)
    - All Characters (http://localhost:9292/users/characters)
    - Characters Belonging To A User (http://localhost:9292/users/:id)
- POST:
    - Create New Character (http://localhost:9292/users/characters/new)
    - Create New User (http://localhost:9292/users/new)
- PATCH:
    - Edit User's Character Name and Job (http://localhost:9292/users/characters/:id)
    - Edit User's Name (http://localhost:9292/users/:id)
- DELETE:
    - Delete User's Character (http://localhost:9292/users/characters/:id)
    - Delete User (http://localhost:9292/users/:id)

## Project Status

1/31/23 - Completed version 0.1

## Planned Features

1. Money system to hire characters

2. Add photos to characters

## Credits  

- [Fire Emblem](https://en.wikipedia.org/wiki/Fire_Emblem) for job names and stat formatting

## Author

This application is by Eric Song who is currently studying the Flex program at Flatiron School.

[Github](https://github.com/ericksong91)

[Linkedin](https://www.linkedin.com/in/eric-song-45597062)


## Contributing 
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)