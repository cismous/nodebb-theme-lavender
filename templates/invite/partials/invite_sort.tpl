<!-- IF loggedIn -->
<div class="btn-group" component="thread/sort">
    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
        <span class="visible-sm-inline visible-md-inline visible-lg-inline title">邀请状态</span>
        <span class="visible-xs-inline"><i class="fa fa-fw fa-sort"></i></span>
        <span class="caret"></span>
    </button>

    <ul class="dropdown-menu pull-right">
        <li><a href="#" class="newest_to_oldest" data-sort="newest_to_oldest"><i class="fa fa-fw"></i> 所有状态</a></li>
        <li><a href="#" class="to_voting" data-sort="voting"><i class="fa fa-fw"></i> 正在投票</a></li>
        <li><a href="#" class="invited" data-sort="invited"><i class="fa fa-fw"></i> 已发邀请</a></li>
        <li><a href="#" class="failed" data-sort="failed"><i class="fa fa-fw"></i> 邀请失败</a></li>
        <li><a href="#" class="joined" data-sort="joined"><i class="fa fa-fw"></i> 已进社区</a></li>
    </ul>
</div>
<!-- ENDIF loggedIn -->
