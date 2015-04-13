<div class="topic" id="invite-detail">
    <ol class="breadcrumb">
        <!-- BEGIN breadcrumbs -->
        <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb" <!-- IF @last -->class="active"<!-- ENDIF @last -->>
        <!-- IF !@last --><a href="{breadcrumbs.url}" itemprop="url"><!-- ENDIF !@last -->
			<span itemprop="title">
				{breadcrumbs.text}
				<!-- IF @last -->
				<!-- IF !feeds:disableRSS -->
				<!-- IF rssFeedUrl --><a target="_blank" href="{rssFeedUrl}"><i class="fa fa-rss-square"></i></a><!-- ENDIF rssFeedUrl --><!-- ENDIF !feeds:disableRSS -->
				<!-- ENDIF @last -->
			</span>
		<!-- IF !@last --></a><!-- ENDIF !@last -->
        </li>
        <!-- END breadcrumbs -->
    </ol>

    <ul component="invite" id="post-container" class="posts" data-iid="{iid}">
        <li class="post-row <!-- IF deleted -->deleted<!-- ENDIF deleted -->"
            data-uid="{uid}" data-username="{user.username}" data-userslug="{user.userslug}" data-timestamp="{timestamp}" data-votes="{invitecount}" itemscope itemtype="http://schema.org/Comment">
            <a component="invite/anchor" name="{index}"></a>

            <meta itemprop="datePublished" content="{relativeTime}">
            <meta itemprop="dateModified" content="{relativeEditTime}">

            <div class="topic-item">
                <div class="topic-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="topic-profile-pic hidden-xs text-center">
                                <a href="<!-- IF user.userslug -->{relative_path}/user/{user.userslug}<!-- ELSE -->#<!-- ENDIF user.userslug -->">
                                    <img src="{user.picture}" alt="{user.username}" class="profile-image user-img" title="{user.username}">
                                </a>
                                <small class="username" title="{user.username}"><a href="<!-- IF user.userslug -->{relative_path}/user/{user.userslug}<!-- ELSE -->#<!-- ENDIF user.userslug -->">{user.username}</a></small>

                                <!-- IF user.banned -->
                                <div class="text-center">
                                    <span class="label label-danger">[[user:banned]]</span>
                                </div>
                                <!-- ENDIF user.banned -->
                            </div>
                            <div class="invite-text">
                                <div class="invite-user">
                                    <span class="invite-username-text">提名人：</span><span component="invite/username" class="invite-username" itemprop="name">{username}</span>
                                    <!-- IF isSelf -->
                                    <span class="invite-email-text">提名人邮箱：</span><span component="invite/email" class="invite-email" itemprop="email">{email}</span>
                                    <!-- ENDIF isSelf -->
                                </div>
                                <hr>
                                <div class="invite-reason" component="invite/reason" >
                                    <span>题名理由：</span>
                                    <span component="invite/content" class="post-content" itemprop="text">{content}</span>
                                </div>
                                <hr>

                                <!-- IF !invited -->
                                <!-- IF !invitedByMe -->
                                <div class="invite-upvote">
                                    <button component="invite/upvote" class="btn btn-primary<!-- IF joined--> btn-success active<!-- ELSE --><!-- IF invited--> btn-danger<!-- ENDIF invited--><!-- ENDIF joined-->" type="button">[[invite:detail.upvote]]</button>
                                    <hr>
                                </div>
                                <!-- ENDIF !invitedByMe -->
                                <!-- ENDIF !invited -->

                                <div class="invite-course" component="invite/reason" >
                                    <span>邀请历程</span>
                                </div>

                                <div class="small-text count">到目前获得了<span component="invite/vote-count" class="votes" data-votes="inviteCount">{inviteCount}</span>票</div>

                                <!-- IF invited -->
                                <div class="small-text invited">{invitedTime}，邀请邮件已经发出</div>
                                <!-- ENDIF invited -->

                                <!-- IF joined -->
                                <div class="small-text joined">该用户已于某时接受邀请进入社区</div>
                                <!-- ELSE -->
                                <!-- IF notJoined -->
                                <div class="small-text not-joined">邀请邮件已经发出五天，被邀请人还没有进入</div>
                                <!-- ENDIF notJoined -->
                                <!-- ENDIF joined -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="topic-footer">
                    <div class="row">
                        <div class="">
                            <small class="pull-right">
                                <span>
                                    <!-- IF user.userslug -->
                                    <i component="user/status" class="fa fa-circle status {user.status}" title='[[global:{posts.user.status}]]'></i>
                                    <!-- ENDIF user.userslug -->
                                    <span data-username="{posts.user.username}" data-uid="{user.uid}">
                                        <!-- IF user.userslug -->
                                        [[global:user_posted_ago, <strong><a href="{relative_path}/user/{user.userslug}" itemprop="author">{user.username}</a></strong>, <span class="timeago" title="{relativeTime}"></span>]]
                                        <!-- ELSE -->
                                        [[global:guest_posted_ago, <span class="timeago" title="{relativeTime}"></span>]]
                                        <!-- ENDIF user.userslug -->
                                    </span>
                                </span>

                                <!-- IF editor.username -->
                                <span>, [[global:last_edited_by_ago, <strong><a href="{relative_path}/user/{editor.userslug}">{editor.username}</a></strong>, <span class="timeago" title="{relativeEditTime}"></span>]]</span>
                                <!-- ENDIF editor.username -->
                            </small>

                            <span class="post-tools">
                                <!-- IF !isSelf -->
                                <!-- IF user.userslug -->
                                <!-- IF loggedIn -->
                                <!-- IF !config.disableChat -->
                                <button component="invite/chat" class="btn btn-sm btn-link chat" type="button" title="[[topic:chat]]"><i class="fa fa-comment"></i><span class="hidden-xs-inline"> [[topic:chat]]</span></button>
                                <!-- ENDIF !config.disableChat -->
                                <!-- ENDIF loggedIn -->
                                <!-- ENDIF user.userslug -->
                                <!-- ENDIF !isSelf -->

                                <!-- IF !invited-->
                                <!-- IF deletable -->
                                    <button component="invite/edit" class="btn btn-sm btn-link edit" type="button" title="[[topic:edit]]"><i class="fa fa-pencil"></i><span class="hidden-xs-inline"> [[topic:edit]]</span></button>
                                    <button component="invite/delete" class="btn btn-sm btn-link delete" type="button" title="[[topic:delete]]"><i class="fa fa-trash-o"></i><span class="hidden-xs-inline"> [[topic:delete]]</span></button>
                                <!-- ENDIF deletable -->
                                <!-- ENDIF !invited-->
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</div>

<div widget-area="footer" class="col-xs-12"></div>

<input type="hidden" template-variable="invite_id" value="{iid}" />
<input type="hidden" template-variable="invite_slug" value="{slug}" />
<input type="hidden" template-variable="currentPage" value="{currentPage}" />
<input type="hidden" template-variable="locked" template-type="boolean" value="{locked}" />
<input type="hidden" template-variable="deleted" template-type="boolean" value="{deleted}" />
<input type="hidden" template-variable="pinned" template-type="boolean" value="{pinned}" />
<input type="hidden" template-variable="invited" template-type="boolean" value="{invited}" />
<input type="hidden" template-variable="invite_name" value="{username}" />
<input type="hidden" template-variable="invitecount" value="{invitecount}" />
<input type="hidden" template-variable="viewcount" value="{viewcount}" />
