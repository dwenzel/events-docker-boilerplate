Events Docker Boilerplate
=========================

This is a docker boilerplate for the t3events suite. It provides a docker based TYPO3 environment for testing and development.

The events suite consists of a set of extensions for the TYPO3 CMS:

- [t3events](https://github.com/dwenzel/t3events.git) - Base package for events
- [t3events_course](https://github.com/dwenzel/t3events_course.git) - Optional package. Extends t3events. Provides features for different types of lessons.
- [t3events_reservation](https://github.com/dwenzel/t3events_reservation.git) - Optional package. Extends t3events. Handles bookings for events (or lessons). 

All of them are included for convenience and can be combined ad lib.

*Warning: This repository is not intended for production.*

## Table of contents

- [First steps / Installation and requirements](/documentation/INSTALL.md)
- [New Events Project](/documentation/PROJECT-EVENTS.md)
- [New TYPO3 Project](/documentation/PROJECT-TYPO3.md)
- [Customizing](/documentation/CUSTOMIZE.md)
- [Services (Webserver, MySQL... Ports, Users, Passwords)](/documentation/SERVICES.md)
- [Docker Quickstart](/documentation/DOCKER-QUICKSTART.md)
- [Run your project](/documentation/DOCKER-STARTUP.md)
- [Container detail info](/documentation/DOCKER-INFO.md)
- [Troubleshooting](/documentation/TROUBLESHOOTING.md)

## Credits
This Docker boilerplate is based on the [Webdevops TYPO3 Docker Boilerplate](https://github.com/webdevops/TYPO3-docker-boilerplate).
