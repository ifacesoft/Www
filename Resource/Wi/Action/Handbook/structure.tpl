<h2>Структура приложения</h2>
<pre><code style="font-size: 10px;">  _cache/                 Cache files for separate projects
  _log/                   Log files for separate projects
  _resource/              Resource files (javascript, css, images etc.) for separate projects
  _storage/               File storage
  _vendor/                Vendors (loaded via composer)

  Ice/              Ice module (Main required module)
        Config/           Configuration files (php format)
              Ice/              Configuration files for Ice module
        Resources/        Resource files
              css/              Css resources
              Ice/              Resource for Ice module (views, localization files etc.)
              img/              Image resources 
              js/               Javascript resources
        Source/           Source files
              Ice/              Source files for Ice module
                    Action/           Ice actions (Ice:Model_Create, Ice:Resource, Ice:Composer_Update, Ice:Phpdoc_Generate etc.)
                    Core/             Core classes and interfaces
                    Data/
                          Provider/   Implementations of data providers (Ice:Apc, Ice:Redis, Ice:File etc.)
                          Source/     Implementations of data sources (now only Ice:Mysqli)
                    Exception/        Exceptions
                    Form/             Forms
                    Helper            Helpers
                    Query/Translator/ Implementations of query translators (now only Ice:Mysqli)
                    Validator/        Implementations of validators (Ice:Not_Null, Ice:Pattern etc.)
                    View/Render/      Implementations of view renders
                    Bootstrap.php     Bootstrapping class file
                    Core.php          Core trait file
              Ice.php           Main application class file
        Web/              Web root directory
              index.php         Directory index file
        app.php           Application run script file
        branch.conf.php   module branch in vcs
        cli               Command line interface
        composer.json     Composer settings
        composer.phar     Composer run script

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
</code></pre>