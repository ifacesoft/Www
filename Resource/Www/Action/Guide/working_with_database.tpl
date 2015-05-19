<h2 id="working_with_database">{$resource.Guide->get('Работа с базами данных')}</h2>
<h3 id="models">{$resource.Guide->get('Модели')}</h3>

<h4>Select examples:</h4>

<pre><code class="php">$page = Page::getModel(20, ['title', 'desc']); // or Page::getModel(20, '*')
// or
$page = Page::create(['title' => 'page 20')->find([id, 'desc']);</code></pre>

<h4>Insert examples:</h4>

<pre><code class="php">Page::create(['title' => 'page 20', 'desc' => '20th page'])->save();</code></pre>

<h4>Update examples:</h4>

<pre><code class="php">Page::getModel(20, ['title', 'desc'])->set(['title' => 'another title'])->save();</code></pre>

<h4>Update examples:</h4>

<pre><code class="php">Page::getModel(20, '/pk')->remove();</code></pre>

<h3 id="query_builder">{$resource.Guide->get('Построение запросов')}</h3>


<h4>Select examples:</h4>

<pre><code class="php">$page = Page::createQueryBuilder()->eq(['desc' => '20th page'])->getSelectQuery()->getModel();</code></pre>

<h4>Insert examples:</h4>

<pre><code class="php">Page::createQueryBuilder()->getInsertQuery(['title' => 'page 20', 'desc' => '20th page'])->getQueryResult();</code></pre>

<h4>Update examples:</h4>

<pre><code class="php">Page::createQueryBuilder()->eq(['id' => 20])->getUpdateQuery(['title' => 'another title'])->getQueryResult();</code></pre>

<h4>Update examples:</h4>

<pre><code class="php">Page::createQueryBuilder()->getDeleteQuery(20)->getQueryResult();</code></pre>
