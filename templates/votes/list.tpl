<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="vote row">
    <div class="{vote_row_size}" no-widget-class="col-lg-12 col-sm-12" no-widget-target="sidebar">
        <div class="header vote-tools clearfix">
            <button id="new_vote" class="btn btn-primary">[[vote_list:new_vote_button]]</button>

			<span class="pull-right">
				<button type="button" class="btn btn-default btn-success watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored -->"><i class="fa fa-eye"></i> [[topic:watch]]</button>
				<button type="button" class="btn btn-default btn-warning ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored -->"><i class="fa fa-eye-slash"></i> [[category:ignore]]</button>

				<div class="dropdown share-dropdown inline-block">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        [[vote:share]] <span class="caret"></span>
                    </button>

                    <!-- IMPORT partials/share_dropdown.tpl -->
                </div>
			</span>
        </div>

        <!-- IF !votes.length -->
        <div class="alert alert-warning" id="vote-no-votes">
            [[vote_list:no_votes]]
        </div>
        <!-- ENDIF !votes.length -->

        <ul component="category" id="votes-container" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
            <meta itemprop="itemListOrder" content="descending">
            <!-- BEGIN votes -->
            <li component="category/topic" class="category-item {function.generateTopicClass}" data-tid="{votes.tid}" data-index="{votes.index}" data-cid="{votes.cid}" itemprop="itemListElement">

                <div class="category-body">
                    <div class="row">
                        <div class="col-md-8 col-sm-9">
                            <!-- IF privileges.editable -->
                            <i class="fa fa-fw fa-square-o pull-left select pointer"></i>
                            <!-- ENDIF privileges.editable -->

                            <div class="category-profile-pic">
                                <a href="<!-- IF votes.user.userslug -->{relative_path}/user/{votes.user.userslug}<!-- ELSE -->#<!-- ENDIF votes.user.userslug -->">
                                    <!-- IF votes.thumb -->
                                    <img src="{votes.thumb}" alt="{votes.title}" class="profile-image user-img" title="{votes.title}">
                                    <!-- ELSE -->
                                    <img src="{votes.user.picture}" alt="{votes.user.username}" class="profile-image user-img" title="{votes.user.username}">
                                    <!-- ENDIF votes.thumb -->
                                </a>
                            </div>
                            <div class="category-text">
                                <p><strong><i component="topic/pinned" class="fa fa-thumb-tack<!-- IF !votes.pinned --> hide<!-- ENDIF !votes.pinned -->"></i> <i component="topic/locked" class="fa fa-lock<!-- IF !votes.locked --> hide<!-- ENDIF !votes.locked -->"></i></strong>
                                    <a href="{relative_path}/topic/{votes.slug}" itemprop="url" class="topic-title">{votes.title}</a><br />
                                    <small>
                                        [[global:posted_ago, <span class="timeago" title="{votes.relativeTime}"></span>]]
                                        <!-- IF !votes.unreplied -->
									<span class="hidden-md hidden-lg">
									<br/>
									<a href="{relative_path}/topic/{votes.slug}/{votes.teaser.index}">[[global:replied_ago, <span class="timeago" title="{votes.teaser.timestamp}"></span>]]</a>
									</span>
                                        <!-- ENDIF !votes.unreplied -->
                                        <br/>
                                        <!-- IMPORT partials/category_tags.tpl -->
                                    </small>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs">
                            <strong class="human-readable-number" title="{votes.postcount}">{votes.postcount}</strong><br />
                            <small>[[global:posts]]</small>
                        </div>
                        <div class="col-xs-1 category-stat hidden-xs">
                            <strong class="human-readable-number" title="{votes.viewcount}">{votes.viewcount}</strong><br />
                            <small>[[global:views]]</small>
                        </div>
                        <div class="col-xs-2 category-stat replies hidden-sm hidden-xs">
                            <!-- IF votes.unreplied -->
                            <p class="no-replies">[[category:no_replies]]</p>
                            <!-- ELSE -->
                            <a href="<!-- IF votes.teaser.user.userslug -->{relative_path}/user/{votes.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF votes.teaser.user.userslug -->"><img class="profile-image small user-img" src="{votes.teaser.user.picture}" title="{votes.teaser.user.username}" /></a>
                            <a href="{relative_path}/topic/{votes.slug}/{votes.teaser.index}">
                                [[global:replied_ago, <span class="timeago" title="{votes.teaser.timestamp}"></span>]]
                            </a>
                            <!-- ENDIF votes.unreplied -->
                        </div>
                    </div>
                </div>

            </li>
            <!-- END votes -->
        </ul>
        <!-- IF config.usePagination -->
        <!-- IMPORT partials/paginator.tpl -->
        <!-- ENDIF config.usePagination -->
    </div>
</div>
