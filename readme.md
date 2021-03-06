# UP Mac :balloon: [![Build Status](https://travis-ci.com/rodrigobdz/up-mac.svg?branch=master)](https://travis-ci.com/rodrigobdz/up-mac)

**UP**grade your **Mac** programs via CLI.

## Features

If installed, the following programs will be upgraded:

- [brew](https://brew.sh/)
- [npm](https://www.npmjs.com/)
- [yarn](https://yarnpkg.com/lang/en/)
- [mas](https://github.com/mas-cli/mas)
- [gem](https://rubygems.org)
- [fisher](https://github.com/fisherman/fisherman)
- [dotfiles](https://github.com/thoughtbot/dotfiles)
- [tldr](https://github.com/tldr-pages/tldr)

### Optional

- Enable yarn autoclean

```sh
# fish
# cd (yarn global dir)

# bash
cd "$(yarn global dir)"

yarn autoclean --init
```

## Usage

- Download script

```sh
curl --remote-name https://raw.githubusercontent.com/rodrigobdz/up-mac/master/up-mac
```

- Run script

```sh
bash up-mac 2>&1 | tee ~/up-mac.log
```

- Optionally, review the log

```sh
less ~/up-mac.log
```
