# veyselaksin/tap

A Homebrew tap for [Glance](https://github.com/veyselaksin/glance) — a native
macOS desktop dashboard for developers (GitHub activity, Docker containers,
and SSH servers in one window), built with [Wails](https://wails.io).

## Install

```bash
brew install veyselaksin/tap/glance
```

This single command adds the tap and installs the `glance` formula. If you
prefer to add the tap first:

```bash
brew tap veyselaksin/tap
brew install glance
```

## Upgrade

```bash
brew upgrade glance
```

New versions are published whenever a `v*` tag is pushed to the
[glance](https://github.com/veyselaksin/glance/releases) repository. Update the
tap to fetch the latest formulae:

```bash
brew update
```

## First launch note (macOS Gatekeeper)

Glance is **ad-hoc signed** (no Apple Developer certificate), so macOS
Gatekeeper may block it on first launch. If you see a verification error or a
"cannot be opened" dialog, run:

```bash
xattr -cr "$(brew --prefix)/glance/Glance.app"
```

Then launch Glance again. This removes the Gatekeeper quarantine attribute from
the bundled app.

## What's in this tap

| Formula   | Description                                   | Homepage                                     |
| --------- | --------------------------------------------- | -------------------------------------------- |
| `glance`  | Wails-based macOS desktop dashboard for devs  | https://github.com/veyselaksin/glance         |

## Uninstall

```bash
brew uninstall glance
brew untap veyselaksin/tap
```

## Troubleshooting

- **`brew install` fails with a checksum mismatch** — the release archive may
  have been re-uploaded. `brew update` to pull the corrected `sha256`, then
  retry. If it persists, open an issue in the
  [glance](https://github.com/veyselaksin/glance/issues) repo.
- **App won't open after install** — see the *First launch note* above and run
  the `xattr -cr` command.
- **Old version after `brew upgrade`** — Homebrew caches the tap; run
  `brew untap veyselaksin/tap && brew tap veyselaksin/tap` to force a refresh.

## License

Formulae in this tap are MIT licensed, matching the upstream
[glance](https://github.com/veyselaksin/glance/blob/main/LICENSE) project.
