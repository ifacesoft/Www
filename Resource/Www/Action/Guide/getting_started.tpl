<h2 id="getting_started">{$resource.Guide->get('Начало работы')}</h2>

<h3 id="installation">{$resource.Guide->get('Установка')}</h3>

<p>
    {$resource.Guide->get('Начать действительно просто. Доступ в интернет и поднятый веб-сервер с поддержкой php - все что вам потребуется.')}
</p>
<h4>{$resource.Guide->get('Шаг первый: выполнить bash-команды')}</h4>
<pre><code class="bash">$ mkdir -p workspace/MyProject && cd workspace/MyProject
$ curl -sS https://getcomposer.org/installer | php
$ php composer.phar init</code></pre>

<h4>{$resource.Guide->get('Следующий шаг: инициализировать composer - создать composer.json')}</h4>
<pre>
Welcome to the Composer config generator

This command will guide you through creating your composer.json config.

Package name (&lt;vendor&gt;/&lt;name&gt;) [dp/my-project]: vendor/my-project
Description []: My project with Ice
Author [dp &lt;denis.a.shestakov@gmail.com&gt;]:
Minimum Stability []: stable
Package Type []: project
License []: proprietary

Define your dependencies.

Would you like to define your dependencies (require) interactively [yes]?
Search for a package []: ifacesoft/ice
Enter the version constraint to require (or leave blank to use the latest version) []:
Using version 1.0.* for ifacesoft/ice
Search for a package []:
Would you like to define your dev dependencies (require-dev) interactively [yes]? no
<code class="json">
{
    "name": "vendor/my-project",
    "description": "My project with Ice",
    "type": "project",
    "require": {
        "ifacesoft/ice": "1.0.*"
    },
    "license": "proprietary",
    "authors": [
        {
            "name": "dp",
            "email": "denis.a.shestakov@gmail.com"
        }
    ],
    "minimum-stability": "stable"
}</code>
Do you confirm generation [yes]? yes
</pre>

<h4>{$resource.Guide->get('Внести правки в composer.json (последние строчки выделены жирным)')}</h4>
<pre><code class="json">{
    "name": "vendor/my-project",
    "description": "My project with Ice",
    "type": "project",
    "require": {
        "ifacesoft/ice": "1.0.*"
    },
    "license": "proprietary",
    "authors": [
        {
            "name": "dp",
            "email": "denis.a.shestakov@gmail.com"
        }
    ],
    "minimum-stability": "stable",<strong>
    "config": {
        "vendor-dir": "../_vendor"
    },
    "scripts": {
        "post-install-cmd": [
            "Ice\\App::update"
        ],
        "post-update-cmd": [
            "Ice\\App::update"
        ]
    }</strong>
}</code></pre>

<h4>{$resource.Guide->get('Выполнить установку зависимостей с помощью composer')}</h4>
<pre><code class="bash">$ php composer.phar install --prefer-source</code></pre>

<p class="alert alert-warning">{$resource.Guide->get('Могут оказаться проблемы с установкой вендора bootstrap')} (Failed to download twbs/bootstrap from source: The process "git clone --no-checkout 'git://github.com/twbs/bootstrap.git' '/usr/home/dp/PhpstormProjects/workspace/_vendor/twbs/bootstrap' && cd '/usr/home/dp/PhpstormProjects/workspace/_vendor/twbs/bootstrap' && git remote add composer 'git://github.com/twbs/bootstrap.git' && git fetch composer" exceeded the timeout of 300 seconds.
    Now trying to download from dist). {$resource.Guide->get('Следует последовать инструкции и выполнить установку вручную.')}
</p>

<h3 id="configuration">{$resource.Guide->get('Конфигурирование')}</h3>

<h4>/etc/hosts</h4>

<pre><code class="bash">127.0.0.1       myproject.global myproject.test myproject.local</code></pre>

<h4>{$resource.Guide->get('Веб-сервер')}</h4>

<h5>Nginx + php-fpm</h5>

<pre><code class="nginx">upstream myproject_phpfcgi {
    #    server 127.0.0.1:9000;
    server unix:/var/run/php5-fpm.sock;
}

server {
    listen 80;

    server_name myproject.global myproject.test myproject.local;
    root /usr/home/dp/PhpstormProjects/workspace/MyProject/Web;

    error_log /usr/home/dp/PhpstormProjects/workspace/_log/error.log;
    access_log /usr/home/dp/PhpstormProjects/workspace/_log/access.log combined;

    client_max_body_size 8m;

    rewrite ^/index\.php/?(.*)$ /$1 permanent;

    location / {
        index index.php;
        try_files $uri @rewriteapp;
    }

    location ~ ^/resource($|/.*) {
        alias /usr/home/dp/PhpstormProjects/workspace/_resource$1;
        index index.html;
    }

    location @rewriteapp {
        rewrite ^(.*)$ /index.php/$1 last;
    }

    location ~ ^/index\.php(/|$) {
        fastcgi_pass myproject_phpfcgi;
        fastcgi_split_path_info ^(.+\.php)(/.*)$;

        include fastcgi_params;

        fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param  HTTPS off;

        fastcgi_buffers 32 32k;
        fastcgi_buffer_size 32k;
    }
}</code></pre>

<h5>Apache + mod_php</h5>

<pre><code class="apache">&lt;VirtualHost *:80&gt;
    ServerName myproject.local    ServerAlias myproject.global myproject.test
    DocumentRoot /usr/home/dp/PhpstormProjects/workspace/MyProject/Web
    DirectoryIndex index.php

    Alias /resource/ /usr/home/dp/PhpstormProjects/workspace/_resource/

    CustomLog /usr/home/dp/PhpstormProjects/workspace/_log/access.log combined
    ErrorLog /usr/home/dp/PhpstormProjects/workspace/_log/error.log

        &lt;Directory /usr/home/dp/PhpstormProjects/workspace&gt;
        AllowOverride All
        Order allow,deny
        Allow from All
        &lt;/Directory&gt;
&lt;/VirtualHost&gt;</code></pre>

<h4>{$resource.Guide->get('Фреймворк')}</h4>

<p>{$resource.Guide->get('Настройка фреймворка будет произведена автоматически')}</p>

<h3 id="project_structure">{$resource.Guide->get('Структура проекта')}</h3>

{$resource.Guide->get('Директория workspace')}:

<pre><code>_cache/          Cache files for separate projects
    _log/                   Log files for separate projects
    _resource/              Resource files (javascript, css, images etc.) for separate projects
    _storage/               File storage
    _vendor/                Vendors (loaded via composer)

    MyProject/        Your module
        Config /          Configuration files (php format)
            Ice/              Overridden configuration files for Ice module
            Mp/               Configuration files for your module (MyProject)
        Resource/         Resource files
            Ice/              Overridden resource files for Ice module
            Mp/               Resource for your module (MyProject) (views, localization files etc.)
        Source/           Source files
            Ice/              Overridden source files for Ice module (not recommended)
            Mp/               Source files for your module (MyProject)
                Action/           Action classes for your module (MyProject)
                Model/            Model classes for your module (MyProject)
                ...               Other implementations of core ice classes and interfaces
        Web/              Web root directory
            index.php         Directory index file
        bootstrap.php     Bootstrap script
        app.php           Application run script
        cli               Console application run script</code></pre>