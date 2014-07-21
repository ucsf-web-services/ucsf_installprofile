# How to run Behat tests

The assumption is that you are the site is being served up on `localhost`, port `80`.

These instructions were compiled on a recent Linux (Fedora) environment; Mac users should be able to follow along without problems.
Windows-users may need to further investigate the internet for their OS-specific setup instructions.

## Prerequisites

At the very least, you must have PHP 5.3.5+ and the Firefox browser installed in order to run these tests.

1. Install the Oracle JDK.

2. Install Composer. See http://getcomposer.org/doc/00-intro.md for instructions.

3. Install Behat and Co. (Selenium, PhantomJS) via Composer.

    ```bash
    cd tests/behat
    composer install
    ```

## Run Test in a web-browser

1. Run Selenium as standalone

    ```bash
    cd tests/behat
    java -jar bin/selenium-server.jar
    ```

2. Run Behat tests with the "browser" profile

    ```bash
    cd <project>
    bin/behat -p browser
    ```

## Run Tests in a headless web-browser

1. Run Selenium as hub

    ```bash
    cd tests/behat
    java -jar bin/selenium-server.jar -role hub
    ```

2. Run PhantomJS and register it with Selenium

    ```bash
    cd tests/behat
    bin/phantomjs --webdriver=8080 --webdriver-selenium-grid-hub=http://127.0.0.1:4444
    ```

3. Run Behat tests with the "headless" profile

    ```bash
    cd tests/behat
    bin/behat -p headless
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
