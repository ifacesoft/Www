<h2 id="preface">{$resource.Guide->get('Предисловие')}</h2>

<h3 id="introduction">{$resource.Guide->get('Введение')}</h3>

<p>{$resource.Guide->get('Это руководство содержит все основные компоненты фрейворка. В настоящее время находится в постоянном обновлении. Терпение, скоро все будет.')}</p>

<h3 id="quick_start">{$resource.Guide->get('Быстрый старт')}</h3>

<a href="#installation">{$resource.Guide->get('подробное руководство по установке')}</a>

<h4>1. {$resource.Guide->get('Создайте composer.json в директории workspace/MyProject')}</h4>
<pre><code class="bash">$ mkdir -p workspace/MyProject && cd workspace/MyProject</code></pre>

<p>
    workspace - {$resource.Guide->get('ваш рабочая дииректория (logs, caches etc.)')};<br>
    MyProject - {$resource.Guide->get('исходные коды вашего проекта')}
</p>

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
    "minimum-stability": "stable",
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
    }
}</code></pre>

<h4>2. {$resource.Guide->get('Инсталлируйте проект с помощью composer')}</h4>

<pre><code class="bash">$ curl -sS https://getcomposer.org/installer | php
$ php composer.phar install --prefer-source</code></pre>

<h4>3. {$resource.Guide->get('Настройте веб-сервер и /etc/hosts')}</h4>

<p>{$resource.Guide->get('После успешной инсталяции, используй сгенерированные конфигурации.')}</p>

<p>
    {$resource.Guide->get('Готово! Ваш проект должен быть доступен по адресу')}
    <strong>http://myproject.local</strong>
</p>

<h4>4. {$resource.Guide->get('Генерация моделей')}</h4>

<p>{$resource.Guide->get('Каждый раз, когда вы вызываете \'./cli Ice:Deploy\' или напрямую \'./cli Ice:Orm_Migrate\' создаются, обновляются и удаляются все модели в соответствии с состоянием текущей схемы базы данных.')}</p>

<h3 id="useful_resources">{$resource.Guide->get('Полезные ресурсы')}</h3>

<h4>{$resource.Guide->get('Исходный код (начиния с версии 0.6 основой репозиторий нахолится на Bitbacket)')}</h4>

<p><a href="https://bitbucket.org/dp_ifacesoft/ice">{$resource.Guide->get('Исходный код на Bitbucket')}</a></p>
<p><a href="https://github.com/ifacesoft/Ice/tree/master">{$resource.Guide->get('Исходный код на GitHub')}</a></p>
<p><a href="http://iceframework.net/resource/api/Ice/1.0">{$resource.Guide->get('Api документация к коду')}</a></p>

<h3 id="contributing">{$resource.Guide->get('Поддержка проекта')}</h3>

<p>{$resource.Guide->get('Ice - это проект с открытым кодом и каждый желающий может внемти свою лепту в его развитие. Проект очень молод и нуждается в серьезной поддержке. На этом этапе требется помощь в написании документации и его перевода на  все доступные языки. <strong>Также любая ваша критика и пожелания пойдут на пользу проекту</strong>.')}</p>

<p>{$resource.Guide->get('Ваши комментарии и предложения можете оставлять в наших группах в социальных сетях: <a href="http://vk.com/iceframework">Vkontakte</a> или <a href="https://www.facebook.com/groups/1398920987078554/">Facebook</a>')}</p>

<p>{$resource.Guide->get('Ваши сообщения об ошибках можно оставлять на странице официального репозитория')} <a href="https://github.com/ifacesoft/Ice/issues">Ice on GitHub</a></p>

<p>{$resource.Guide->get('Спасибо за любую оказанную поддержку.')}</p>