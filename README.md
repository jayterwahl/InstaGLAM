# instaglam

[Heroku link][heroku]
[heroku]: http://www.herokuapp.com

## Minimum Viable Product

instaglam is a web application inspired by Instagram, built using Ruby on Rails, Javascript, human suffering,
and React.js. instaglam allows users to:

- [ ] Create an account
- [ ] Log in / Log out
- [ ] View pictures. 
- [ ] Upload pictures.
- [ ] Apply filters to their pictures.
- [ ] Follow others, and view followed pictures in a feed.

## Design Docs
* [View Wireframes][views]
* [React Components][components]
* [Flux Stores][stores]
* [API endpoints][api-endpoints]
* [DB schema][schema]

[views]: ./docs/views.md
[components]: ./docs/components.md
[stores]: ./docs/stores.md
[api-endpoints]: ./docs/api-endpoints.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and User Authentication (0.5 days)

**Objective:** Functioning rails project with Authentication

- [ ] create new project
- [ ] create `User` model
- [ ] authentication
- [ ] user signup/signin pages
- [ ] blank landing page after signin

### Phase 2: photos Model, API, and basic APIUtil (1.5 days)

**Objective:** Photos can be created, read, edited (filtered) and destroyed through
the API.


- [ ] seed the database with test data
- [ ] CRUD API for photos (`photosController`)
- [ ] jBuilder views for photos (maybe. I hate jbuilder)
- [ ] setup Webpack & Flux scaffold
- [ ] setup `APIUtil` to interact with the API
- [ ] test out API interaction in the console.

### Phase 3: Flux Architecture and Router (1.5 days)

**Objective:** photos can be created, read, edited and destroyed with the
user interface.

- [ ] setup the flux loop with skeleton files
- [ ] setup React Router
- implement each photos component, building out the flux loop as needed.
  - [ ] `photosIndex`
  - [ ] `photosIndexItem`
  - [ ] `photosForm`


### Phase 4: ownership and feeds (1 day)

**Objective:** photos belong to users, and can be viewed by users.

- build out API, Flux loop, and components for:
- [ ] users following other users
- [ ] users have a "feed", containing pictures from their followed users
- [ ] viewing photos by user
- Use CSS to style new views

### Phase 5: Style All The Things (4 days)

**Objective:** Existing pages (including singup/signin) will look good.

- [ ] copy existing websites I like
- [ ] bribe michael shane as needed
- [ ] position elements on the page
- [ ] add basic colors & styles


Phase 3 adds organization to the photos. photos belong to a photosbook,
which has its own `Index` view.


### Phase 6: Styling Cleanup and Seeding (1 day)

**objective:** Make the site feel more cohesive and awesome.

- [ ] Get feedback on my UI from others
- [ ] Refactor HTML classes & CSS rules
- [ ] Add modals, transitions, and other styling flourishes.

