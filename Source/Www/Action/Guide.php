<?php
namespace Www\Action;

use Ice\Core\Action;
use Ice\Core\Debuger;
use Ice\Core\Module;
use Ice\Core\Request;
use Ice\Core\Route;
use Ice\Helper\Date;
use Ice\Helper\Emmet;
use Ice\Helper\String;
use Ice\Widget\Data\Table;
use Ice\Widget\Form\Simple;
use Ice\Widget\Menu\Nav;
use Ice\Widget\Menu\Navbar;
use Ice\Widget\Menu\Pagination;
use Symfony\Component\Finder\Tests\FakeAdapter\NamedAdapter;

/**
 * Class Guide
 *
 * @see Ice\Core\Action
 * @see Ice\Core\Action_Context;
 * @package Www\Action;
 * @author dp
 * @version stable_0
 */
class Guide extends Action
{
    /**
     * Action config
     *
     * @return array
     *
     * @author anonymous <email>
     *
     * @version 0
     * @since 0
     */
    protected static function config()
    {
        return [
            'view' => ['viewRenderClass' => 'Ice:Smarty'],
            'actions' => 'Www:Feedback',
            'input' => [
                'url' => ['providers' => 'router']
            ],
            'output' => [
                'resource' => 'Ice:Resource/Www\Action\Guide'
            ],
        ];
    }

    /**
     * Run action
     *
     * @param array $input
     * @return array
     */
    public function run(array $input)
    {
        $resource = Guide::getResource();

        $menu =
            Nav::create($input['url'], __CLASS__)
                ->setNavClasses('guide-sidebar')
                ->nav('preface', 'Предисловие',
                    Nav::create($input['url'], __CLASS__)
                        ->link('introduction', 'Введение')
                        ->link('quick_start', 'Быстрый старт')
                        ->link('useful_resources', 'Полезные ресурсы')
                        ->link('contributing', 'Поддержка проекта')
                )
                ->nav('getting_started', 'Начало работы',
                    Nav::create($input['url'], __CLASS__)
                        ->link('installation', 'Установка')
                        ->link('configuration', 'Конфигурирование')
                )
                ->nav('basics', 'Основы',
                    Nav::create($input['url'], __CLASS__)
                        ->link('routes', 'Маршруты')
                        ->link('actions', 'Действия')
                        ->link('templates', 'Шаблоны')
                )
                ->nav('working_with_database', 'Работа с базами данных',
                    Nav::create($input['url'], __CLASS__)
                        ->link('models', 'Модели')
                        ->link('query_builder', 'Построение запросов')
                )
                ->nav('widgets', 'Виджеты',
                    Nav::create($input['url'], __CLASS__)
                        ->link('forms', 'Формы')
                        ->link('menu', 'Меню')
                        ->link('data', 'Данные')
                )
//                ->nav('security', 'Безопастность',
//                    Nav::create($input['url'], __CLASS__)
//                        ->link('roles', 'Роли')
//                        ->link('acl', 'Список контроля доступа')
//                )
                ->nav('data_handling', 'Работа с данными',
                    Nav::create($input['url'], __CLASS__)
                        ->link('validators', 'Валиваторы')
                        ->link('filters', 'Фильтры')
                        ->link('converters', 'Конвертеры')
                )
                ->nav('error_handling', 'Обработка ошибок',
                    Nav::create($input['url'], __CLASS__)
                        ->link('logger', 'Логгер')
                        ->link('debugger', 'Дебаггер')
                        ->link('profiler', 'Профайлер')
                );

        $form = Simple::create(Request::uri(), __CLASS__)
            ->setLayout(Emmet::PANEL_BODY)
            ->text('textField', 'First text field', ['placeholder' => 'Enter text value'])
            ->date('date', 'Example date field', ['default' => Date::get()])
            ->password('password', 'Password')
            ->button('save', 'Save');

        $navMenu = Nav::create(Request::uri(), __CLASS__)
            ->setClasses('nav-pills')
            ->link(
                'guide',
                $resource->get('Руководство'),
                [
                    'href' => 'http://iceframework.net/guide', 'target' => '_blank',
                    'active' => String::startsWith(Request::uri(), Route::getInstance('www_guide')->getUrl())
                ]
            )
            ->link('github', 'GitHub', ['href' => 'https://github.com/ifacesoft/Ice/tree/master', 'target' => '_blank'])
            ->link('bitbucket', 'Bitbucket', ['href' => 'https://bitbucket.org/dp_ifacesoft/ice', 'target' => '_blank'])
            ->link('api', 'Api', ['href' => 'http://iceframework.net/resource/api/Ice/1.0', 'target' => '_blank']);

        $navbarMenu = Navbar::create(Route::getInstance('ice_admin')->getUrl(), __CLASS__)
            ->setBrand(Module::getInstance()->get('name'))
            ->setClasses('navbar-inverse')
            ->link(
                Route::getInstance('www_guide')->getUrl(),
                $resource->get('Руководство'),
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
            );

        $paginationMenu = Pagination::create(Request::uri(), __CLASS__)
            ->setFoundRows(1234)
            ->setClasses('pagination-sm')
            ->setStyle('margin: 0;')
            ->setPage(25)
            ->setLimit(30);

        $tableData = Table::create(Request::uri(), __CLASS__)
            ->setClasses('table-striped table-bordered table-hover table-condensed')
            ->setStyle('background-color: #ffffff;')
            ->setHeaderStyle('background-color: #e7e7e7')
            ->setColumnCount(3)
            ->text('period', $resource->get('Период'), ['rowspan' => 2])
            ->text('count', $resource->get('Просмотров'), ['colspan' => 2])
            ->text('count1', $resource->get('люди'))
            ->text('count2', $resource->get('роботы'))
        ->setRows([
            [
                'period' => $resource->get('вчера'),
                'count' => 5,
                'count1' => 3,
                'count2' => 2
            ],
            [
                'period' => $resource->get('сегодня'),
                'count' => 8,
                'count1' => 5,
                'count2' => 3
            ]
        ]);

        return [
            'menu' => $menu,
            'form' => $form,
            'navMenu' => $navMenu,
            'navbarMenu' => $navbarMenu,
            'paginationMenu' => $paginationMenu,
            'tableData' => $tableData
        ];
    }
}