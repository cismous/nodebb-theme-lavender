<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="category row">
    <div class="{invite_row_size}" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
        <div class="header clearfix">
            <button id="new_invite" class="btn btn-primary">[[invite_list:new_invite_button]]</button>

			<span class="pull-right">
				<button type="button" class="btn btn-default btn-success watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored -->"><i class="fa fa-eye"></i> [[topic:watch]]</button>
				<button type="button" class="btn btn-default btn-warning ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored -->"><i class="fa fa-eye-slash"></i> [[category:ignore]]</button>
			</span>
        </div>

        <!-- IF !invite.length -->
        <div class="alert alert-warning">
            [[invite_list:no_invite]]
        </div>
        <!-- ENDIF !invite.length -->

        <ul component="category" id="invite-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
            <meta itemprop="itemListOrder" content="descending">
            <!-- BEGIN invite -->
            <li component="category/topic" class="category-item {function.generateTopicClass}" data-tid="{invite.tid}" data-index="{invite.index}" data-cid="{invite.cid}" itemprop="itemListElement">

                <div class="category-body">
                    <div class="row">
                        <div class="col-md-8 col-sm-9">
                            <div class="category-profile-pic">
                                <a href="<!-- IF invite.user.userslug -->{relative_path}/user/{invite.user.userslug}<!-- ELSE -->#<!-- ENDIF invite.user.userslug -->">
                                    <img src="{invite.user.picture}" alt="{invite.user.username}" class="profile-image user-img" title="{invite.user.username}">
                                </a>
                            </div>
                            <div class="category-text">
                                <p><strong><i component="topic/pinned" class="fa fa-thumb-tack<!-- IF !invite.pinned --> hide<!-- ENDIF !invite.pinned -->"></i> <i component="topic/locked" class="fa fa-lock<!-- IF !invite.locked --> hide<!-- ENDIF !invite.locked -->"></i></strong>
                                    <a href="{relative_path}/invite/{invite.slug}" itemprop="url" class="topic-title">{invite.username}</a><br />
                                    <small>
                                        [[global:posted_ago, <span class="timeago" title="{invite.relativeTime}"></span>]]
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs">
                            <strong class="human-readable-number" title="{invite.invitecount}">{invite.invitecount}</strong><br />
                            <small>[[invite:invite_count]]</small>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs">
                            <strong class="human-readable-number" title="{invite.viewcount}">{invite.viewcount}</strong><br />
                            <small>[[global:views]]</small>
                        </div>
                        <div class="col-xs-2 category-stat replies hidden-sm hidden-xs">
                            <!-- IF invite.joined -->
                            <p class="no-replies">[[invite:list.joined]]</p>
                            <!-- ELSE -->
                            <p class="no-replies">[[invite:list.no_joined]]</p>
                            <!-- ENDIF invite.joined -->
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
