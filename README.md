
# Now Computers

Build a small demo of a Store, where a user can create a Product and a visitor to the website can view all the Product(s) that the company offers.
We'd expect to see:

  - Models, views and controllers required to facilitate a "Store" as well as a "Product":
    - A Store can have many Products.
    - A Product has attributes such as Name, Description, Release Date and Category.
    - We're not expecting a gorgeous UI, don't spend much time on CSS.
  - Basic demonstrable test coverage, using a test framework that you're
   comfortable with (rspec, minitest), using fixtures and mocks where
   applicable.

If you want to really impress, feel free to go above the basic requirements to implement any functionality that you think will impress.
For example, maybe you can add:
- [ ] Stock level tracking - Tracking the quantity of Product(s) available?
- [ ] Shopping basket functionality - customers can add a Product to a Basket?
- [x] Mailers - if a new Product is added, does the Store send an Email?


## Installation
First we need to install PostgreSQL. On macOS we’ll use [Homebrew](https://flaviocopes.com/homebrew/). If you don’t have Homebrew installed yet, go to [https://brew.sh/](https://brew.sh/) and follow the instructions there.

Once you are done, get back and in the command line run:
```bash
brew install postgresql
``````
and after it finished we need to start db service. Using brew we run:
```bash
brew services start postgresql
```
In order to install gems, run:
```bash
bundler install
```
To setup database, run:
```bash
rails db:setup
```
That will setup databases and seeds.

### Create new user
In order to start using the app as an admin we need to create  an user. This will allow us
to admin Stores and Products.
Run rails console with:
```bash
User.create!(email: "test@example.com", password: "your_password", password_confirmation: "your_password")
```

## Run application
To start the application, run:
```bash
rails s
````

## Run tests
```bash
rails spec
```

## Test coverage
After running  tests, open `coverage/index.html` in the browser of your choice. For example, in Mac Terminal, run the following command from application's root directory:
```bash
open coverage/index.html
```
