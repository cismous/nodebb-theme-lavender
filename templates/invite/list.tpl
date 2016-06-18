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

        <ul component="invite" id="invite-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
            <meta itemprop="itemListOrder" content="descending">
            <!-- BEGIN invite -->
            <li component="invite/post" class="category-item" data-iid="{invite.iid}" data-index="{invite.index}">

                <div class="category-body">
                    <div class="row">
                        <div class="col-md-10 col-sm-9">
                            <div class="category-profile-pic">
                                <a href="<!-- IF invite.user.userslug -->{config.relative_path}/user/{invite.user.userslug}<!-- ELSE -->#<!-- ENDIF invite.user.userslug -->">
                                    <img src="{invite.user.picture}" alt="{invite.user.username}" class="profile-image user-img" title="{invite.user.username}">
                                </a>
                            </div>
                            <div class="category-text">
                                <p><strong><i component="invite/pinned" class="fa fa-thumb-tack<!-- IF !invite.pinned --> hide<!-- ENDIF !invite.pinned -->"></i> <i component="invite/locked" class="fa fa-lock<!-- IF !invite.locked --> hide<!-- ENDIF !invite.locked -->"></i></strong>
                                    <a href="{config.relative_path}/invite/{invite.slug}" itemprop="url" class="invite-title">{invite.username}</a><br />
                                    <small>
                                        {invite.user.username} [[invite:list.posted_ago, <span class="timeago" title="{invite.relativeTime}"></span>]]，
                                    </small>
                                    <small>
                                        <!-- IF invite.deleted -->
                                        [[invite:list.status_deleted]]
                                        <!-- ELSE -->
                                        <!-- IF invite.joined -->
                                        [[invite:list.status_joined]]
                                        <!-- ELSE -->
                                        <!-- IF invite.expired -->
                                        {invite.expiredText}，[[invite:list.status_failed]]
                                        <!-- ELSE -->
                                        <!-- IF invite.invited -->
                                        [[invite:list.status_invited]]，{invite.emailStatusText}
                                        <!-- ELSE -->
                                        [[invite:list.status_voting]]，已得{invite.inviteCount}票，<!-- IF invite.downvoteCount -->其中反对票{invite.downvoteCount}，<!-- ENDIF invite.downvoteCount -->还需{invite.remainCount}票
                                        <!-- ENDIF invite.invited -->
                                        <!-- ENDIF invite.expired -->
                                        <!-- ENDIF invite.joined -->
                                        <!-- ENDIF invite.deleted -->
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs<!-- IF !invite.postCount --> invite-item-gray<!-- ENDIF !invite.postCount -->">
                            <strong class="human-readable-number" title="{invite.postCount}">{invite.postCount}</strong><br />
                            <small>[[invite:list.postCount]]</small>
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
