# dotfiles

This is the last dotfiles and provisioning repo I make. I swear.

## Tools

I'm using [Ansible](https://www.ansible.com/).

I'd like to add [yadm](https://yadm.io/).

I tried [Comtrya](https://www.comtrya.dev/). It's great for very simple things. I want a completely provisioned system which isn't simple. For example, if I want to use `comtrya` to manage files in `/etc`, I have to `chown` them to me, run `file.copy`, and `chown` them back to `root`.
