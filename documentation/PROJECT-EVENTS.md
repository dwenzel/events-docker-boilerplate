[<-- Back to main section](../README.md)

# Events project

## Create new  project

All existing files will be removed!

For the first setup (make sure [composer](https://getcomposer.org/) is installed):

```bash
make create events
make up
```

or

```bash
rm -f app/.gitkeep
composer install
touch app/web/FIRST_INSTALL app/.gitkeep
make up
```

This creates a TYPO3 project with all events extensions in app/web and starts your docker machine.
Head to [http://localhost:8000](http://localhost:8000) and proceed with the first install steps.
See [SERVICES](./SERVICES.md) for required credentials (database, user, password...).

When the TYPO3 installation is finished, login to the [TYPO3 backend](http://localhost:8000/typo3) and install 
the extensions via Extension Manager.

## TYPO3 cli runner

You can run one-shot command inside the `app` service container:

```bash
docker-compose run --rm app typo3/cli_dispatch.phpsh scheduler
docker-compose run --rm app bash
```

Webserver is available at Port 8000


## Error: Trusted Host pattern

Set in htdocs/typo3conf/LocalConfiguration.php:

    'SYS' => array(
        [ ... ],
        'trustedHostsPattern' => '.*',
    ),

Should not be needed on Apache HTTPd.
