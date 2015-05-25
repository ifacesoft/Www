<div class="container">
    <h1>
            <span style="font-family: DaxlineBold;">
                Ice</span> - <span style="font-family: DaxlineThin;">
                {$resource.Index->get('быстрый и понятный инструмент для веб-разработки.')}
            </span>
    </h1>
    {*<div class="panel panel-default">*}
    {*<div class="panel-body">*}
    {*{$Feedback[0]}*}
    {*</div>*}
    {*</div>*}
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-body">
                    {*<p>*}
                    {*Ice*}
                    {*- {$resource.Index->get('php-фреймворк общего назначения. Вы можете просто создавать сложные веб-приложения, полностью положившись на Ice. Ключевыми возможностями Ice является встроенная поддержка кеширования основных компонентов, гибкая настройка и возможность простого расширения имеющегося функционала.')}*}
                    {*</p>*}
                    <p>
                        <img src="https://poser.pugx.org/ifacesoft/ice/v/stable">
                        <img src="https://poser.pugx.org/ifacesoft/ice/v/unstable">
                        <img src="https://scrutinizer-ci.com/g/ifacesoft/Ice/badges/quality-score.png?b=master">
                        <img src="https://scrutinizer-ci.com/g/ifacesoft/Ice/badges/coverage.png?b=master">
                        <img src="https://poser.pugx.org/ifacesoft/ice/downloads">
                        <img src="https://poser.pugx.org/ifacesoft/ice/license">
                    </p>

                    <h2>{$resource.Index->get('Быстрый старт')}</h2>

                    <h3>1. {$resource.Index->get('Создайте composer.json в директории workspace/MyProject')}</h3>
                    <pre><code class="bash">$ mkdir MyProject && cd MyProject && touch composer.json</code></pre>

                    <p>
                        workspace - {$resource.Index->get('ваш рабочая дииректория (logs, caches etc.)')};<br>
                        MyProject - {$resource.Index->get('исходные коды вашего проекта')}
                    </p>

                    <p>
                        {$resource.Index->get('пример файла')}
                        <a href="#composer_json" onclick="return false;" data-toggle="modal"
                           data-target="#composer_json" class="pseudo-link">composer.json</a>
                    </p>

                    <!-- Modal -->
                    <div class="modal fade" id="composer_json" tabindex="-1" role="dialog"
                         aria-labelledby="composerJsonLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                                aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="composerJsonLabel">composer.json</h4>
                                </div>
                                <div class="modal-body">
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
        "vendor-dir": "Var/vendor"
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
                                </div>
                            </div>
                        </div>
                    </div>
                    <h3>2. {$resource.Index->get('Инсталлируйте проект с помощью composer')}</h3>

<pre><code class="bash">$ curl -sS https://getcomposer.org/installer | php
$ php composer.phar install --prefer-source</code></pre>

                    <h3>3. {$resource.Index->get('Настройте веб-сервер и /etc/hosts')}</h3>

                    <p>{$resource.Index->get('После успешной инсталяции, используй сгенерированные конфигурации.')}</p>

                    <p>
                        {$resource.Index->get('Готово! Ваш проект должен быть доступен по адресу')}
                        <strong>http://myproject.local</strong>
                    </p>

                    <h3>4. {$resource.Index->get('Генерация моделей')}</h3>

                    <p>{$resource.Index->get('Каждый раз, когда вы вызываете \'./cli Ice:Deploy\' или напрямую \'./cli Ice:Orm_Migrate\' создаются, обновляются и удаляются все модели в соответствии с состоянием текущей схемы базы данных.')}</p>

                </div>
            </div>

            <hr class="hrline" style="height: 5px;">

            <h2>{$resource.Index->get('К 70-летию Победы. Релиз Ice 1.0 - PHP Framework')}</h2>

            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-right">
                        Denis A. Shestakov | 08.05.2015
                    </div>
                    <p style="clear: both;">
                        <a href="#" class="thumbnail" style="display: block; float:left; margin-right: 10px;">
                            <img src="/resource/img/logo/ice62c.jpg" alt="Ice PHP Framework"/>
                        </a>
                        <em>
                            {$resource.Index->get('Это, наконец-таки, случилось. Рад представить на суд разработчикиков свою разработку. Многое уже реализовано, но еще больше предстоит сделать.')}
                            {$resource.Index->get('Пробуйте - не пожалеете! Буду благодарен и признателен, если кто-нибудь по достоинству оценит и внесет ряд замечаний. Критика приветствуется!')}
                        </em>
                    </p>

                    <h3>{$resource.Index->get('Ice - другой фреймворк')}</h3>

                    <p>
                        {$resource.Index->get('Да, это не просто еще один фреймворк. По крайней мере вы не найдете там классический MVC.')}
                        {$resource.Index->get('Очень многие компоненты были реализованы без оглядки на ближайшие аналоги и от этого он не стал хуже. Он - другой!')}
                    </p>

                    <h3>{$resource.Index->get('Философия Ice')}</h3>

                    <p>
                        {$resource.Index->get('PHP изначально был предназначен для разработки простых веб-страниц. Это, наконец, один из языков программирования с самым низким порогом вхождения.')}
                        {$resource.Index->get('Помнится, когда я только начинал программировать и не достаточно хорошо знал новый для меня синтаксис языка, я пробовал. И на мое удивление код работал.')}
                        {$resource.Index->get('Разработка Ice - это попытка создать инструмент, в котором были бы минимизированы все нетривиальные подходы. <strong>Самое главное, я не хочу разбираться в коде, я хочу его читать</strong>.')}
                        {$resource.Index->get('Эти слова наиболее полно отражают философию Ice.')}
                    </p>

                    <h3>{$resource.Index->get('Для кого Ice?')}</h3>

                    <p>
                        {$resource.Index->get('В первую очередь Ice подойдет для стартапов, а также для малого и среднего бизнеса.')}
                        {$resource.Index->get('Это объясняется его действительно простой концепцией и возможностью очень быстрого прототипирования.')}
                    </p>

                    <h3>{$resource.Index->get('Когда использовать Ice?')}</h3>

                    <p>
                        {$resource.Index->get('Целесообразно начинать новый проект именно на Ice. Удобство и скорость разработки помогут вам максимально использовать свои конкуретнтные приемущества.')}
                        {$resource.Index->get('Также стоит использовать Ice если вы хотите переписать свой проект с уже устаревшей версии другого фреймворка.')}
                    </p>

                    {*<div class="pull-right">*}
                    {*<a href="#" class="pseudo-link" onclick="return false;" data-toggle="modal" data-target="#commentModal">комментарии</a>*}
                    {*</div>*}
                </div>
            </div>
            <div class="modal fade" id="commentModal" tabindex="-1" role="dialog" aria-labelledby="commentModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="commentModalLabel">Последние комментарии</h4>
                        </div>
                        <div class="modal-body">
                            {$form}
                            {$data}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="panel panel-default">
                <div class="panel-body">
                    <img src="/resource/img/denis_shestakov.jpg" alt="Ice PHP Framework developer - Denis Shestakov" style="width: 82px; float: left; margin-right: 10px;"/>
                    <h5>Denis Shestakov (developer)</h5>
                    <ul>
                        <li>denis.a.shestakov@gmail.com</li>
                        <li>https://twitter.com/dpssden</li>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">(function () {
                    if (window.pluso)if (typeof window.pluso.start == "function") return;
                    if (window.ifpluso == undefined) {
                        window.ifpluso = 1;
                        var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                        s.type = 'text/javascript';
                        s.charset = 'UTF-8';
                        s.async = true;
                        s.src = ('https:' == window.location.protocol ? 'https' : 'http') + '://share.pluso.ru/pluso-like.js';
                        var h = d[g]('body')[0];
                        h.appendChild(s);
                    }
                })();</script>
            <div data-description="Ice - Open Source PHP Framework" data-url="http://iceframework.net" class="pluso"
                 data-background="none;"
                 data-options="medium,square,line,horizontal,nocounter,sepcounter=1,theme=14"
                 data-services="vkontakte,odnoklassniki,facebook,twitter,linkedin,google"></div>

            {*<div style="margin-top: 12px;">*}
            {*{$Feedback[0]}*}
            {*</div>*}



            <div style="clear: both; padding-top: 20px;" class="panel-group" id="accordion" role="tablist"
                 aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                               aria-expanded="true"
                               aria-controls="collapseOne">
                                {$resource.Index->get('Особенности')}
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel"
                         aria-labelledby="headingOne">
                        <div class="panel-body">
                            <ul>
                                <li>&mdash; {$resource.Index->get('ПРОСТ в изучении и использовании;')}</li>
                                <li>&mdash; {$resource.Index->get('Невероятно БЫСТР в при настройках по умолчанию;')}</li>
                                <li>&mdash; {$resource.Index->get('Легко поддается РАСШИРЕНИЮ;')}</li>
                                <li>&mdash; {$resource.Index->get('Из коробки Вы получаете болшинство возможностей, доступных в других популярных фреймворках;')}</li>
                                <li>&mdash; {$resource.Index->get('Гибкая система конфигурации;')}</li>
                                <li>&mdash; {$resource.Index->get('Размер исходного кода не превышает 7 Мб – ничего лишнего;')}</li>
                                <li>&mdash; {$resource.Index->get('Возможность использования сторонних библиотек через composer;')}</li>
                                <li>&mdash; {$resource.Index->get('Встроенная поддерюка JQuery, Bootstrap.')}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo"
                               aria-expanded="false" aria-controls="collapseTwo">
                                {$resource.Index->get('Архитектура')}
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
                         aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <ul>
                                <li>&mdash; {$resource.Index->get('Ice требует версии php 5.4 и выше;')}</li>
                                <li>&mdash; {$resource.Index->get('Модульная структура приложений;')}</li>
                                <li>&mdash; {$resource.Index->get('Достуны 3 окружения: production, test и development;')}</li>
                                <li>&mdash; {$resource.Index->get('Каждый экшен – отдельный класс;')}</li>
                                <li>&mdash; {$resource.Index->get('Автогенерация экшенов, моделей и шаблонов;')}</li>
                                <li>&mdash; {$resource.Index->get('Универсальный класслоадер;')}</li>
                                <li>&mdash; {$resource.Index->get('Обязательный маппинг схемы данных;')}</li>
                                <li>&mdash; {$resource.Index->get('Кеширование большинства сущностей;')}</li>
                                <li>&mdash; {$resource.Index->get('Быстрый доступ объектов из контейнера.')}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree"
                               aria-expanded="false" aria-controls="collapseThree">
                                {$resource.Index->get('Возможности')}
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                         aria-labelledby="headingThree">
                        <div class="panel-body">
                            <ul>
                                <li>&mdash; {$resource.Index->get('Гибкая и понятная настройка роутинга;')}</li>
                                <li>&mdash; {$resource.Index->get('Очень и очень гибкое конфигурирование;')}</li>
                                <li>&mdash; {$resource.Index->get('Рендер любым из доступных рендеров в любой момент времени (Ice:Php, Ice:Smarty, Ice:Twig и др.)')}
                                    ;
                                </li>
                                <li>&mdash; {$resource.Index->get('Получение и сохранение данных в поставщиках (Ice:Apc, Ice:Redis и много других)')}
                                    ;
                                </li>
                                <li>&mdash; {$resource.Index->get('CRUD-операции с источником данных (Ice:Mysqli)')}
                                    ;
                                </li>
                                <li>&mdash; {$resource.Index->get('Построение запроса в источнику данных;')}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-body">
                    {$SocialNetwork_Vkontakte_Widget_Group[0]}
                    {*{$SocialNetwork_Facebook_Widget_Group[0]}*}
                </div>
            </div>
        </div>
    </div>
</div>
