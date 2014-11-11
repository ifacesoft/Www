<!DOCTYPE html>
<html>
<head>
    <meta charset=utf-8>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon"/>
    <title>{$title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {$Resources[0]}
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-51954794-1', 'iceframework.net');
        ga('send', 'pageview');

    </script>
</head>
<body>
<div id="Layout_Main">
    <div id="iceMessages" class='notifications top-right'></div>
    <h1 class="container" style="font-size: 30px;">
        <a href="/">
            <img alt="Brand" src="/resource/img/logo/ice400.jpg" style="height: 62px;"/>
            Ice PHP Framework
        </a>
    </h1>
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Ice</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav nav-justified" style="width: 80%;">
                    <li style="float: none;"><a href="/handbook">Handbook</a></li>
                    <li style="float: none;"><a href="/cookbook">Cookbook</a></li>
                    <li style="float: none;"><a href="/api/0.0">Api</a></li>
                    <li style="float: none;"><a href="/faq">Faq</a></li>
                    {*<li class="last" style="float: none;"><a href="http://iceframework.net/demo">Live Demo</a></li>*}
                </ul>
                <ul class="nav navbar-nav right-nav">
                    <a href="https://github.com/ifacesoft/Ice/issues/new" type="button"
                       class="btn btn-danger navbar-btn" target="_blank">
                        Сообщить об ошибке
                    </a>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                {$main}
            </div>
            <div class="col-lg-3">
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
        </div>
    </div>

    <div class="footer">
        <div class="navbar navbar-inverse" style="margin-bottom: 0;">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/">
                        <img alt="Brand" src="/resource/img/logo/ice400.jpg" style="height: 22px;"/>
                    </a>
                </div>
                <p class="navbar-text">&copy; <a href="http://ifacesoft.ru">Ifacesoft</a> 2014</p>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/handbook">Handbook</a></li>
                        <li><a href="/cookbook">Cookbook</a></li>
                        <li><a href="/api/0.0">Api</a></li>
                        <li><a href="/faq">Faq</a></li>
                        {*<li><a href="http://iceframework.net/demo">Live Demo</a></li>*}
                    </ul>
                    <div class="nav navbar-nav navbar-right">{literal}
                            <!-- Yandex.Metrika informer -->
                            <a href="https://metrika.yandex.ru/stat/?id=25280492&amp;from=informer"
                               target="_blank" rel="nofollow"><img
                                        src="//bs.yandex.ru/informer/25280492/3_1_FFFFFFFF_EFEFEFFF_0_pageviews"
                                        style="width:88px; height:31px; border:0;" alt="Яндекс.Метрика"
                                        title="Яндекс.Метрика: данные за сегодня (просмотры, визиты и уникальные посетители)"
                                        onclick="try{Ya.Metrika.informer({i:this,id:25280492,lang:'ru'});return false}catch(e){}"/></a>
                            <!-- /Yandex.Metrika informer -->

                            <!-- Yandex.Metrika counter -->
                            <script type="text/javascript">
                                (function (d, w, c) {
                                    (w[c] = w[c] || []).push(function () {
                                        try {
                                            w.yaCounter25280492 = new Ya.Metrika({
                                                id: 25280492,
                                                webvisor: true,
                                                clickmap: true,
                                                trackLinks: true,
                                                accurateTrackBounce: true
                                            });
                                        } catch (e) {
                                        }
                                    });

                                    var n = d.getElementsByTagName("script")[0],
                                            s = d.createElement("script"),
                                            f = function () {
                                                n.parentNode.insertBefore(s, n);
                                            };
                                    s.type = "text/javascript";
                                    s.async = true;
                                    s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

                                    if (w.opera == "[object Opera]") {
                                        d.addEventListener("DOMContentLoaded", f, false);
                                    } else {
                                        f();
                                    }
                                })(document, window, "yandex_metrika_callbacks");
                            </script>
                            <noscript>
                                <img src="//mc.yandex.ru/watch/25280492" style="position:absolute; left:-9999px;"
                                     alt=""/>
                            </noscript>
                            <!-- /Yandex.Metrika counter -->

                            <!--LiveInternet counter-->
                            <script type="text/javascript"><!--
                                document.write("<a href='http://www.liveinternet.ru/click' " +
                                "target=_blank><img src='//counter.yadro.ru/hit?t14.6;r" +
                                escape(document.referrer) + ((typeof(screen) == "undefined") ? "" :
                                ";s" + screen.width + "*" + screen.height + "*" + (screen.colorDepth ?
                                        screen.colorDepth : screen.pixelDepth)) + ";u" + escape(document.URL) +
                                ";" + Math.random() +
                                "' alt='' title='LiveInternet: number of pageviews for 24 hours," +
                                " of visitors for 24 hours and for today is shown' " +
                                "border='0' width='88' height='31'><\/a>")
                                //--></script>
                            <!--/LiveInternet-->
                        {/literal}
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
        </div>
    </div>
</div>
</body>
</html>