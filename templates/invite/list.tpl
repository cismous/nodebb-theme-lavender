<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="category row" id="invite-list">
    <div class="{invite_row_size}" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
        <div class="header clearfix">
            <button id="new_invite" class="btn btn-primary">[[invite:list.new]]</button>

			<span class="pull-right">
				<!-- IMPORT invite/partials/invite_sort.tpl -->
			</span>
        </div>

        <!-- IF !invite.length -->
        <div class="alert alert-warning">
            [[invite:list.no_invite]]
        </div>
        <!-- ENDIF !invite.length -->

        <ul component="invite" id="invite-container" itemscope itemtype="http://www.schema.org/itemlist" data-nextstart="{nextstart}">
            <meta itemprop="itemlistorder" content="descending">
            <!-- begin invite -->
            <li component="invite/post" class="category-item" data-iid="{invite.iid}" data-index="{invite.index}">

                <div class="category-body">
                    <div class="row">
                        <div class="col-md-10 col-sm-9">
                            <div class="category-profile-pic">
                                <a href="<!-- if invite.user.userslug -->{config.relative_path}/user/{invite.user.userslug}<!-- else -->#<!-- endif invite.user.userslug -->">
                                    <img src="{invite.user.picture}" alt="{invite.user.username}" class="profile-image user-img" title="{invite.user.username}">
                                </a>
                            </div>
                            <div class="category-text">
                                <p><strong><i component="invite/pinned" class="fa fa-thumb-tack<!-- if !invite.pinned --> hide<!-- endif !invite.pinned -->"></i> <i component="invite/locked" class="fa fa-lock<!-- if !invite.locked --> hide<!-- endif !invite.locked -->"></i></strong>
                                    <a href="{config.relative_path}/invite/{invite.slug}" itemprop="url" class="invite-title">{invite.username}</a><br />
                                    <small>
                                        {invite.user.username} [[invite:list.posted_ago, <span class="timeago" title="{invite.relativetime}"></span>]]，
                                    </small>
                                    <small>
                                        <!-- if invite.deleted -->
                                        [[invite:list.status_deleted]]
                                        <!-- else -->
                                        <!-- if invite.joined -->
                                        [[invite:list.status_joined]]
                                        <!-- else -->
                                        <!-- if invite.expired -->
                                        有效期内，{invite.expiredtext}，[[invite:list.status_failed]]
                                        <!-- else -->
                                        <!-- if invite.invited -->
                                        [[invite:list.status_invited]]，{invite.emailstatustext}
                                        <!-- else -->
                                        [[invite:list.status_voting]]，已得{invite.invitecount}票，<!-- if invite.downvotecount -->其中反对票{invite.downvotecount}，<!-- endif invite.downvotecount -->还需{invite.remaincount}票
                                        <!-- endif invite.invited -->
                                        <!-- endif invite.expired -->
                                        <!-- endif invite.joined -->
                                        <!-- endif invite.deleted -->
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs<!-- if !invite.postcount --> invite-item-gray<!-- endif !invite.postcount -->">
                            <strong class="human-readable-number" title="{invite.postcount}">{invite.postcount}</strong><br />
                            <small>[[invite:list.postcount]]</small>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs">
                            <strong class="human-readable-number" title="{invite.viewcount}">{invite.viewcount}</strong><br />
                            <small>[[global:views]]</small>
                        </div>
                    </div>
                </div>

            </li>
            <!-- END invite -->
        </ul>
        <!-- IF config.usePagination -->
        <!-- IMPORT partials/paginator.tpl -->
        <!-- ENDIF config.usePagination -->
    </div>
</div>
