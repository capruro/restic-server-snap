## Configuration and Daemon Management

To simplify management of the REST server daemon, a configuration file (`rest-server.conf`) is provided in the snap package. This file allows you to easily customize the behavior of the REST server without modifying the wrapper script or service definition.

### Location

The configuration file is located at:

  `/var/snap/restic-server/common/rest-server.conf`

### Usage

1. Edit the configuration file to set your desired options (such as data directory, authentication, TLS, etc.).
2. After making changes, restart the daemon to apply the new configuration:

     `sudo snap restart restic-server`

The wrapper script (`rest-server-wrapper.sh`) automatically loads and applies the settings from `rest-server.conf` when starting the REST server.

This approach makes it easy to manage and update the service configuration, ensuring changes are persistent and straightforward.
distributions.</p>
<h1 align="center">
  <img src="https://avatars1.githubusercontent.com/u/29598503?v=3&s=256" alt="restic-server">
  <br />
  restic-server
</h1>

<p align="center"><b>This is the snap for <a href="https://github.com/restic/rest-server">restic-server</a></b>, <i>REST server backend for Restic, packaged as a snap</i>. It works on Ubuntu, Fedora, Debian, and other major Linux distributions.</p>

<!-- Uncomment and modify this when you are provided a build status badge
<p align="center">
<a href="https://snapcraft.io/my-snap-name">
  <img alt="enpass" src="https://snapcraft.io/my-snap-name/badge.svg" />
</a>
<a href="https://snapcraft.io/my-snap-name">
  <img alt="enpass" src="https://snapcraft.io/my-snap-name/trending.svg?name=0" />
</a>
</p>
-->

<!-- Uncomment and modify this when you have a screenshot
![my-snap-name](screenshot.png?raw=true "my-snap-name")
-->

<p align="center">Published for <img src="https://raw.githubusercontent.com/anythingcodes/slack-emoji-for-techies/gh-pages/emoji/tux.png" align="top" width="24" /> with 💝 by Snapcrafters</p>


## Install

  sudo snap install restic-server --channel=stable

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-white.svg)](https://snapcraft.io/restic-server)



([Don't have snapd installed?](https://snapcraft.io/docs/core/install))


## About

This snap packages the [restic-server](https://github.com/restic/rest-server) REST backend for Restic, making it easy to install and run as a service on any major Linux distribution.

### Features
- REST server backend for Restic
- Strict confinement
- Supports multiple architectures: amd64, arm64, armhf, ppc64el, s390x
- Easy installation and updates via Snap Store

## Usage

After installation, the REST server can be started and managed as a service:

  sudo snap start restic-server

Configuration files are located in:

  /snap/restic-server/current/snap/local/

You can customize `rest-server.conf` and use the wrapper script as needed.

## Contributing

Issues and contributions are welcome! Please open issues or pull requests on [GitHub](https://github.com/capruro/restic-server-snap).

## License

This project is licensed under the terms of the LICENSE file in this repo.

If you have any questions, [post in the Snapcraft forum](https://forum.snapcraft.io).

<!--
## The Snapcrafters

| [![Your Name](https://gravatar.com/avatar/bc0bced65e963eb5c3a16cab8b004431/?s=128)](https://github.com/yourname/) |
| :---: |
| [Your Name](https://github.com/yourname/) |
--> 

<!-- Uncomment and modify this when you have upstream contacts
## Upstream

| [![Upstream Name](https://gravatar.com/avatar/bc0bced65e963eb5c3a16cab8b004431?s=128)](https://github.com/upstreamname) |
| :---: |
| [Upstream Name](https://github.com/upstreamname) |
-->
