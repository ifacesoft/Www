<div id="fb-root"></div>

        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.0&appId=1398920987078554";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>
        <div class="row">
            <div class="col-md-8">
                <h1>
            <span style="font-family: DaxlineBold;">
                Ice</span> - <span style="font-family: DaxlineThin;">
                {$resource.Index->get('быстрый и понятный инструмент для веб-разработки.')}
            </span>
                </h1>

                <p>
                    <img src="https://poser.pugx.org/ifacesoft/ice/v/stable.svg">
                    <img src="https://poser.pugx.org/ifacesoft/ice/v/unstable.svg">
                    <img src="https://scrutinizer-ci.com/g/ifacesoft/Ice/badges/quality-score.png?b=master">
                    <img src="https://scrutinizer-ci.com/g/ifacesoft/Ice/badges/coverage.png?b=master">
                    <img src="https://poser.pugx.org/ifacesoft/ice/downloads.svg">
                    <img src="https://poser.pugx.org/ifacesoft/ice/license.svg">
                </p>

                <p>
                    Ice
                    - {$resource.Index->get('php-фреймворк общего назначения. Вы можете просто создавать сложные веб-приложения, полностью положившись на Ice. Ключевыми возможностями Ice является встроенная поддержка кеширования основных компонентов, гибкая настройка и возможность простого расширения имеющегося функционала.')}
                </p>
        <h2 style="font-family: DaxlineMedium;">{$resource.Index->get('Краткая презентация')}</h2>

        <iframe src="http://www.slideshare.net/DenisShestakov/slideshelf" width="760px" height="570px" frameborder="0"
                marginwidth="0" marginheight="0" scrolling="no" style="border:none;" allowfullscreen
                webkitallowfullscreen
                mozallowfullscreen></iframe>

        <h2 style="font-family: DaxlineMedium;">{$resource.Index->get('Наше сообщество')}</h2>

        <div class="row">
            <div class="col-md-6">
                <script type="text/javascript" src="//vk.com/js/api/openapi.js?115"></script>

                <!-- VK Widget -->
                <div id="vk_groups"></div>
                <script type="text/javascript">
                    VK.Widgets.Group("vk_groups", {
                        mode: 0,
                        width: "220",
                        height: "400",
                        color1: 'FFFFFF',
                        color2: '2B587A',
                        color3: '5B7FA6'
                    }, 73142573);
                </script>
            </div>
            <div class="col-md-6">
                <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fgroups%2F1398920987078554%2F&amp;width=220&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:220px; height:258px;" allowTransparency="true"></iframe>
                <div class="fb-like-box" data-href="https://www.facebook.com/groups/1398920987078554/" data-width="220"
                     data-height="400" data-colorscheme="light" data-show-faces="true" data-header="false"
                     data-stream="false" data-show-border="false"></div>
            </div>
        </div>


    </div>
    <div class="col-md-4">
        <h2 style="font-family: DaxlineMedium;">{$resource.Index->get('Change language')}</h2>

        <div class="panel panel-default">
            <div class="panel-body">
                {foreach from=$flags item="flag"}
                    <img src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                         class="flag flag-{$flag.country}" style="cursor: pointer;"
                         alt="{$flag.lang}" onclick="location.href='/ice/locale/{$flag.locale}';"
                         data-toggle="tooltip" data-placement="top" title="{$flag.lang}"/>
                {/foreach}
            </div>
        </div>
        {*<p>*}
        {*<button class="btn btn-info">Напишите нам</button>*}
        {*<button class="btn btn-success">Помогите проекту</button>*}
        {*</p>*}
        <h2 style="font-family: DaxlineMedium;">{$resource.Index->get('Особенности')}</h2>

        <div class="panel panel-default">
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

        <h2 style="font-family: DaxlineMedium;"> {$resource.Index->get('Архитектура')}</h2>

        <div class="panel panel-default">
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

        <h2 style="font-family: DaxlineMedium;"> {$resource.Index->get('Возможности')}</h2>

        <div class="panel panel-default">
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
                    <li>&mdash; {$resource.Index->get('CRUD-операции с источником данных (Ice:Mysqli)')};</li>
                    <li>&mdash; {$resource.Index->get('Построение запроса в источнику данных;')}</li>
                </ul>
            </div>
        </div>
    </div>
</div>