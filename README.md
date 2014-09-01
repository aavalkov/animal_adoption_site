#Animal Adoption Site
This site can be used to post animals ready to be adopted. Animals and traits can be added, edited, deleted and shown. The traits are added to animals so users are able to figure out the character of each animal.

The project is for my Epicodus conventional rails assessment.

##Author
[Anna Valkov](http://aavalkov.com)

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/aavalkov/animal_adoption_site.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.

It is also available on http://animal-adoption-site.herokuapp.com/

##License
MIT