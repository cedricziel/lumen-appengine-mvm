# Lumen PHP Framework (Fitted for Google AppEngine Managed VMs)

## Prerequisites

* gcloud command available (install the [Google Cloud SDK](https://cloud.google.com/sdk/)
* gcloud authentication (``gcloud auth``)
* a project in one of the Managed VMs enabled Google Cloud Platform Zones (at the time of writing, those are all in the us)
* git, composer, php, python2, python2-crcmod
* docker & docker-compose if you need a database locally via docker-compose

## Preparation

* ``composer install``
* modify ``app.yaml`` to your needs (the ``default`` module is exposed at the root of your AppEngine,
  you can have multiple modules)


## Preview

You may start a mysql instance bound to 127.0.0.1/localhost with ``docker-compose up``

```
python2 $HOME/google-cloud-sdk/bin/dev_appserver.py \
    --custom_entrypoint="php artisan serve \
    --port {port}" \
    app.yaml
    
# or

./preview.sh
```

## Deploy

```
# "--promote" determines if this should be exposed at your AppEngine Module root
# "--version" determines how the docker builder VM on Compute Engine will be named (important if
#             you want to deploy more than one module at time, and the module Version name
gcloud preview app deploy --version default-001 --promote app.yaml
```


[![Build Status](https://travis-ci.org/laravel/lumen-framework.svg)](https://travis-ci.org/laravel/lumen-framework)
[![Total Downloads](https://poser.pugx.org/laravel/lumen-framework/d/total.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/lumen-framework/v/stable.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Unstable Version](https://poser.pugx.org/laravel/lumen-framework/v/unstable.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![License](https://poser.pugx.org/laravel/lumen-framework/license.svg)](https://packagist.org/packages/laravel/lumen-framework)

Laravel Lumen is a stunningly fast PHP micro-framework for building web applications with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Lumen attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as routing, database abstraction, queueing, and caching.

## Official Documentation

Documentation for the framework can be found on the [Lumen website](http://lumen.laravel.com/docs).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell at taylor@laravel.com. All security vulnerabilities will be promptly addressed.

### License

The Lumen framework is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT)
