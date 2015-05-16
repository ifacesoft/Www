<div class="container">
    <h1>{$resource.Guide->get('Руководство')}</h1>

    <div class="row">
        <div class="col-md-2">
                {$menu}
        </div>
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-body">
                    {include file="{$smarty.current_dir}/Guide/preface.tpl"}
                    {include file="{$smarty.current_dir}/Guide/getting_started.tpl"}
                    {include file="{$smarty.current_dir}/Guide/basics.tpl"}
                    {include file="{$smarty.current_dir}/Guide/working_with_database.tpl"}
                    {include file="{$smarty.current_dir}/Guide/widgets.tpl"}
                    {include file="{$smarty.current_dir}/Guide/security.tpl"}
                    {include file="{$smarty.current_dir}/Guide/data_handling.tpl"}
                    {include file="{$smarty.current_dir}/Guide/error_handling.tpl"}
                </div>
            </div>
        </div>
        <div class="col-md-2">
            {*{$Feedback[0]}*}
        </div>
    </div>
</div>