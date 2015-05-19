<h2 id="error_handling">{$resource.Guide->get('Обработка ошибок')}</h2>

<h3 id="logger">{$resource.Guide->get('Логгер')}</h3>

<h4>Warning</h4>
<pre><code class="php">Logger::getInstance(Page::getClass())->warning('Ooou! warning', __FILE__, __LINE__);</code></pre>

<h4>Error</h4>
<pre><code class="php">Logger::getInstance(Page::getClass())->error('Ooou! error', __FILE__, __LINE__);</code></pre>

<h4>Fatal - throw exception</h4>
<pre><code class="php">Logger::getInstance(Page::getClass())->exception('Ooou! Something went wrong. Fix it.', __FILE__, __LINE__);</code></pre>

<h4>Debug in browser console</h4>

<pre><code class="php">Logger::fb($debugVar);</code></pre>

<h3 id="debugger">{$resource.Guide->get('Дебаггер')}</h3>

<pre><code class="php">Debuger::dump($debugVar);
// or
Debuger::dumpDie($debugVar);</code></pre>

<h3 id="profiler">{$resource.Guide->get('Профайлер')}</h3>

<h4>1. {$resource.Guide->get('Создаем метку')}</h4>

<pre><code class="php">$startTime = Profiler::getMicrotime();
$startMemory = Profiler::getMemoryGetUsage();</code></pre>

<h4>2. {$resource.Guide->get('После проблемного кода фиксируем состояние')}</h4>

<pre><code class="php">Profiler::setPoint('profilerPointName', $startTime, $startMemory);</code></pre>

<h4>3. {$resource.Guide->get('Показываем результат')}</h4>

<pre><code class="php">echo Profiler::getReport('profilerPointName');</code></pre>