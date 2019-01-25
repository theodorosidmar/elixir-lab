> https://becoming-functional.com/building-a-rest-api-with-phoenix-and-elixir-b12dcec302c5

```bash
$ docker-compose up -d
$ mix ecto.migrate
$ iex -S mix
iex(1)> alias ApiExample.Repo
iex(2)> alias ApiExample.User
iex(3)> Repo.insert(%User{name: "Joe", email: "joe@domain.com", password: "secret", stooge: "moe"})
iex(4)> Repo.insert(%User{name: "Jane", email: "jane@domain.com", password: "donttell", stooge: "larry"})
iex(5)> Repo.all(User)
iex(6)> Repo.get(User, 2)
$ mix phoenix.server
```

# ApiExample

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
