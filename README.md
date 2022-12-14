# dotfiles

This is the last dotfiles and provisioning repo I make. I swear.

## Tools

I'm using [Ansible](https://www.ansible.com/). Inside of this repo, I've tried to configure everything to be as simple as possible using this. I might even create a simple CLI/bash script that will rerun this stuff as I make changes to it.

This is paired with [yadm](https://yadm.io/) to manage lots of [my actual dotfiles](https://github.com/thecjharries/dotfiles-yadm).

I tried [Comtrya](https://www.comtrya.dev/). It's great for very simple things. I want a completely provisioned system which isn't simple. For example, if I want to use `comtrya` to manage files in `/etc`, I have to `chown` them to me, run `file.copy`, and `chown` them back to `root`.

## Setup

Before I run this, I have to do the following things (in no particular order)

* Create `~/.config/ansible/dotfiles-provisioning-vault` and export its password from my password manager
* Set up an SSH key for use with my GitHub account

I should probably figure out a spot for this somewhere in the `~/.local` hierarchy for future runs.

## Usage

### Kitchen Sink

```console
ansible-playbook site.yaml
```

### Individual Tasks

This won't work on OS-specific things as those are just tasks files.

```console
ansible-playbook <subject>.ansible.yaml
```

## TODO

* Add pre-commit to this repo
* Add these tools
  * [tflint](https://github.com/terraform-linters/tflint)
  * [kubetail](https://github.com/johanhaleby/kubetail)
  * [vimkubectl](https://github.com/rottencandy/vimkubectl)
  * [LaTeX](https://wiki.archlinux.org/title/TeX_Live)
* Manage these processes
  * NetworkManager
  * DNS resolver
* Fully configure
  * `flameshot`
* Manage boot and kernel stuff
  * `ibt=off` for Intel chips
* [Set up podman](https://github.com/nektos/act/issues/303#issuecomment-882069025)
