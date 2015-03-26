# How to run Behat tests

The assumption is that you are the site is being served up on `localhost`, port `80`.

These instructions were compiled on a recent Linux (Fedora) environment; Mac users should be able to follow along without problems.
Windows-users may need to further investigate the internet for their OS-specific setup instructions.

## Prerequisites

At the very least, you must have PHP 5.4+ and the Firefox browser installed in order to run these tests.

1. Install the Oracle JDK.

2. Install Composer. See http://getcomposer.org/doc/00-intro.md for instructions.

3. Install Behat and Co. (Selenium) via Composer.

    ```bash
    cd tests/behat
    composer install
    ```
4. Copy `behat.yml.dist` to `behat.yml` and the replace `drupal_root` value with whatever path is applicable in your environment.

## Run Test in a web-browser

1. Run Selenium as standalone

    ```bash
    cd tests/behat
    java -jar bin/selenium-server.jar
    ```

2. Run Behat tests with the "browser" profile

    ```bash
    cd tests/behat
    bin/behat -p browser
    ```

## Troubleshooting

- Why am I getting "PHP Fatal error:  Class 'DOMDocument' not found..."?

   Make sure your `php-xml` PHP extension is installed or up-to-date.

    ```bash
    # Fedora/RHEL/CentOS
    sudo yum install php-xml
    ```

- Why am I getting "PHP Fatal error:  Call to undefined function Behat\Behat\DependencyInjection\mb_internal_encoding()..."?

   Make sure you have installed the `php-mbstring` PHP extension.

    ```bash
    # Fedora/RHEL/CentOS
    sudo yum install php-mbstring
    ```

- Why I am not getting colored output from behat tests?

   Behat is probably not picking up the type of terminal you're using.  Forcing it to run in ANSI mode will probably fix it.

    ```bash
    bin/behat --ansi
    ```
