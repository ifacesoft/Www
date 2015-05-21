<h2 id="basics">{$resource.Guide->get('Основы')}</h2>

<h3 id="routes">{$resource.Guide->get('Маршруты')}</h3>

<h4>/Config/Ice/Core/Route.php</h4>
<pre><code class="php">return [
    'mp_page' => [
        'route' => '/page/{literal}{$page}{/literal}',
        'params' => [
            'page' => '(\d)'
        ],
        'weight' => 10000,
        'request' => [
            'GET' => [
                'Www:Layout_Main' => [
                    'actions' => [
                        ['Ice:Title' => 'title', ['title' => 'Ice - Open Source PHP Framework ']],
                        'Www:Index' => 'main'
                    ]
                ]
            ]
        ]
    ]
]</code></pre>
        <div>Important parts:</div>
        <ul>
            <li>'mp_page' - Route name, (Uses: Route::getInstance('mp_page')->getUrl(20)) returned '/page/20' etc.)</li>
            <li>'weight' - Priority of matched routes. Greater weight - greater priority.</li>
            <li>'request' section - Array of available requuest methods (GET, POST etc.)</li>
            <li>'request/GET' - Only one item (first) contained layout action class as key and params as value</li>
        </ul>

<h3 id="actions">{$resource.Guide->get('Деиствия')}</h3>

<pre><code class="php">namespace Mp\Action;
use Ice\Core\Action;
class Page extends Action
{
    protected static function config()
    {
        return [
            'view' => ['viewRenderClass' => 'Ice:Smarty', 'template' => null, 'layout' => null],
            'actions' => [],
            'input' => [],
            'output' => [],
            'ttl' => -1,
            'access' => [
                'roles' => [],
                'request' => null,
                'env' => null
            ]
        ];
    }
    public function run(array $input)
    {
        return ['var' => 'inTemplate'];
    }
}</code></pre>
        <div class="alert alert-info">2 main methods - config and run</div>
        <h4>method config - return array:</h4>
        <ul>
            <li>'view' - Define way of render output data ('viewRenderClass' - render class, 'template' - template for render, layout - template-wrapper of rendered content in emmet style)</li>
            <li>'actions' - Child actions</li>
            <li>'input' - Array of input params with their data providers. Also information of validators, defaults end other.</li>
            <li>'output' - Фdditional sources of output (params and their data providers as well as 'input' section)</li>
            <li>'ttl' - time stored in cache (now supported only 3600 :) )</li>
            <li>'access' - Information to checks permissions to run action (support environment - one of 'production', 'test' or 'development' and request - one of 'cli' or 'ajax')</li>
        </ul>
        <h4>method run - return output array</h4>
<p>{$resource.Guide->get('Содержит бизнес-логику')}</p>

<h3 id="templates">{$resource.Guide->get('Шаблоны')}</h3>

<h4>{$resource.Guide->get('Рендер Smarty шаблона')}</h4>

<pre><code class="php">Smarty::getInstance()->fetch('Mp\Action\Page', ['var' => 'inTemplate'])</code></pre>
