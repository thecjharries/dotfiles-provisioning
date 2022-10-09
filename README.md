# dotfiles

This is the last dotfiles and provisioning repo I make. I swear.

## Tools

I'm using [Ansible](https://www.ansible.com/). Inside of this repo, I've tried to configure everything to be as simple as possible using this. I might even create a simple CLI/bash script that will rerun this stuff as I make changes to it.

I'd like to add [yadm](https://yadm.io/).

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
