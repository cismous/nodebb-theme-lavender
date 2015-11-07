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
                        <div class="<!-- IF col -->col-md-8 col-sm-7<!-- ELSE -->col-md-9 col-sm-8<!-- ENDIF col -->">
                            <div class="category-profile-pic">
                                <a href="<!-- IF invite.user.userslug -->{config.relative_path}/user/{invite.user.userslug}<!-- ELSE -->#<!-- ENDIF invite.user.userslug -->">
                                    <img src="{invite.user.picture}" alt="{invite.user.username}" class="profile-image user-img" title="{invite.user.username}">
                                </a>
                            </div>
                            <div class="category-text">
                                <p><strong><i component="invite/pinned" class="fa fa-thumb-tack<!-- IF !invite.pinned --> hide<!-- ENDIF !invite.pinned -->"></i> <i component="invite/locked" class="fa fa-lock<!-- IF !invite.locked --> hide<!-- ENDIF !invite.locked -->"></i></strong>
                                    <a href="{config.relative_path}/invite/{invite.slug}" itemprop="url" class="invite-title">{invite.username}</a><br />
									<!-- IF !invite.joined -->
									<small>
										{invite.user.username} [[invite:list.posted_ago, <span class="timeago" title="{invite.relativeTime}"></span>]]，
									</small>
									<!-- ENDIF !invite.joined -->
                                    <small>
                                        <!-- IF invite.deleted -->
                                        [[invite:list.status_deleted]]
                                        <!-- ELSE -->
                                        <!-- IF invite.joined -->
                                        [[invite:list.status_joined]]
                                        <!-- ELSE -->
                                        <!-- IF invite.expired -->
                                        [[invite:list.status_failed]]
                                        <!-- ELSE -->
                                        <!-- IF invite.invited -->
                                        [[invite:list.status_invited]]
                                        <!-- ELSE -->
                                        [[invite:list.status_voting]]
                                        <!-- ENDIF invite.invited -->
                                        <!-- ENDIF invite.expired -->
                                        <!-- ENDIF invite.joined -->
                                        <!-- ENDIF invite.deleted -->
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs">
                            <strong class="human-readable-number" title="{invite.inviteCount}">{invite.inviteCount}</strong><br />
                            <small>[[invite:list.invite_count]]</small>
                        </div>
                        <!-- IF isAll -->
                        <div class="col-xs-1 category-stat hidden-xs<!-- IF !invite.postCount --> invite-item-gray<!-- ENDIF !invite.postCount -->">
                            <strong class="human-readable-number" title="{invite.postCount}">{invite.postCount}</strong><br />
                            <small>[[invite:list.postCount]]</small>
                        </div>
                        <!-- ENDIF isAll -->
                        <!-- IF isVoting -->
                        <div class="col-xs-1 category-stat hidden-xs<!-- IF !invite.downvoteCount --> invite-item-gray<!-- ENDIF !invite.downvoteCount -->">
                            <strong class="human-readable-number" title="{invite.downvoteCount}">{invite.downvoteCount}</strong><br />
                            <small>[[invite:list.invite_downvote]]</small>
                        </div>
                        <!-- ENDIF isVoting -->
                        <!-- IF isInvited -->
                        <div class="col-xs-1 category-stat hidden-xs">
                            <strong class="human-readable-number" style="padding-top:2px;line-height:33px;font-size:17px;display:inline-block;">{invite.emailStatus}</strong><br />
                            <small>邮件状态</small>
                        </div>
                        <!-- ELSE -->
                        <div class="col-xs-1 category-stat hidden-xs<!-- IF !invite.remainCount --> invite-item-gray<!-- ENDIF !invite.remainCount -->">
                            <strong class="human-readable-number" title="{invite.remainCount}">{invite.remainCount}</strong><br />
                            <small>[[invite:list.remain_count]]</small>
                        </div>
                        <!-- ENDIF isInvited -->
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
