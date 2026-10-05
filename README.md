# Reactor

Homebrew tap for the Reactor CLI. `reactor` signs you into a cluster, creates projects, and deploys functions, sites, and migrations.

```sh
brew tap reactor-cloud/reactor
brew install reactor
```

[reactor.cloud](https://www.reactor.cloud)

## First session

```sh
reactor setup --url http://127.0.0.1:18000 --cluster local --email you@example.com --name "Ada Lovelace"
reactor projects create todos --link
reactor deploy
```

`setup` stores a console session. `projects create --link` writes `reactor.toml` and `.reactor/service_key`. `deploy` applies migrations and uploads `functions/` and `site/`.

## Commands

| Command | What it does |
| --- | --- |
| `login` / `logout` / `context` | Console sessions in `~/.config/reactor` |
| `projects` / `link` / `keys rotate` | Projects and API keys |
| `service-keys` | List, create, or revoke console service keys |
| `deploy` | Migrations, functions, and the site |
| `db migrate` / `db tables` / `db rows` | SQL and a look at the linked database |
| `functions` / `sites` / `storage` / `logs` | Day to day on the linked project |

`v1.26.10-beta7` builds from source and needs Rust. The formula uses tag `v1.26.10-beta7` of [reactor-cloud/reactor](https://github.com/reactor-cloud/reactor).

Command reference: [CLI](https://github.com/reactor-cloud/reactor/blob/v1.26.10-beta7/docs/operate/cli.md).

## License

You can use Reactor as the backend for as many personal or commercial projects as you want. The license only restricts offering it as a competing hosted service.

Business Source License 1.1. Copyright 2026 AtomicoLabs SL and Claudio del Conde. See [LICENSE](LICENSE).
