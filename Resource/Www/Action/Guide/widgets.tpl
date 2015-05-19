<h2 id="widgets">{$resource.Guide->get('Виджеты')}</h2>

<h3 id="forms">{$resource.Guide->get('Формы')}</h3>

<h4>{$resource.Guide->get('Простая форма')}</h4>

<pre><code class="php">$form = Simple::create(Request::uri(), __CLASS__)
    ->setLayout(Emmet::PANEL_BODY)
    ->text('textField', 'First text field', ['placeholder' => 'Enter text value'])
    ->date('date', 'Example date field', ['default' => Date::get()])
    ->password('password', 'Password');</code></pre>

<h5>{$resource.Guide->get('Результат')}:</h5>
{$form}

<h3 id="menu">{$resource.Guide->get('Меню')}</h3>

<h4>{$resource.Guide->get('Простое меню')}</h4>

<pre><code class="php">$navMenu = Nav::create(Request::uri(), __CLASS__)
    ->setClasses('nav-pills')
    ->link(
        'guide',
        '{$resource.Guide->get('Руководство')}',
        [
            'href' => 'http://iceframework.net/guide', 'target' => '_blank',
            'active' => String::startsWith(Request::uri(), Route::getInstance('www_guide')->getUrl())
        ]
    )
    ->link('github', 'GitHub', ['href' => 'https://github.com/ifacesoft/Ice/tree/master', 'target' => '_blank'])
    ->link('bitbucket', 'Bitbucket', ['href' => 'https://bitbucket.org/dp_ifacesoft/ice', 'target' => '_blank'])
    ->link('api', 'Api', ['href' => 'http://iceframework.net/resource/api/Ice/1.0', 'target' => '_blank']);</code></pre>

<h5>{$resource.Guide->get('Результат')}:</h5>
{$navMenu}

<h4>{$resource.Guide->get('Навигационное меню')}</h4>

<pre><code class="php">$navbarMenu = Navbar::create(Route::getInstance('ice_admin')->getUrl(), __CLASS__)
    ->setBrand(Module::getInstance()->get('name'))
    ->setClasses('navbar-inverse')
    ->link(
        Route::getInstance('www_guide')->getUrl(),
        '{$resource.Guide->get('Руководство')}',
        ['active' => String::startsWith(Request::uri(), Route::getInstance('www_guide')->getUrl())]
    )
    ->link('/resource/api/Ice/1.0', 'Api', ['active' => false])
    ->dropdown(
        '#widgets',
        'Dropdown menu - Widgets',
        [
            'Widget Form' => '#forms',
            'Widget Menu' => '#menu',
            'Widget Data' => '#data',
        ]
    );</code></pre>

<h5>{$resource.Guide->get('Результат')}:</h5>
{$navbarMenu}

<h4>{$resource.Guide->get('Пагинация')}</h4>

<pre><code class="php">$paginationMenu = Pagination::create(Request::uri(), __CLASS__)
    ->setFoundRows(1234)
    ->setClasses('pagination-sm')
    ->setStyle('margin: 0;')
    ->setPage(25)
    ->setLimit(30);</code></pre>

<h5>{$resource.Guide->get('Результат')}:</h5>
{$paginationMenu}

<h3 id="data">{$resource.Guide->get('Данные')}</h3>
<h4>{$resource.Guide->get('Таблица')}</h4>

<pre><code class="php">$tableData = Table::create(Request::uri(), __CLASS__)
    ->setClasses('table-striped table-bordered table-hover table-condensed')
    ->setStyle('background-color: #ffffff;')
    ->setHeaderStyle('background-color: #e7e7e7')
    ->setColumnCount(3)
    ->text('period', '{$resource.Guide->get('Период')}', ['rowspan' => 2])
    ->text('count', '{$resource.Guide->get('Просмотров')}', ['colspan' => 2])
    ->text('count1', '{$resource.Guide->get('люди')}')
    ->text('count2', '{$resource.Guide->get('роботы')}')
    ->setRows([
        [
            'period' => '{$resource.Guide->get('вчера')}',
            'count' => 5,
            'count1' => 3,
            'count2' => 2
        ],
        [
            'period' => '{$resource.Guide->get('сегодня')}',
            'count' => 8,
            'count1' => 5,
            'count2' => 3
        ]
    ]);</code></pre>

<h5>{$resource.Guide->get('Результат')}:</h5>
{$tableData}
