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
                                <a href="<!-- IF user.userslug -->{config.relative_path}/user/{user.userslug}<!-- ELSE -->#<!-- ENDIF user.userslug -->">
                                    <img src="{user.picture}" alt="{user.username}" class="profile-image user-img" title="{user.username}">
                                </a>
                                <small class="username" title="{user.username}"><a href="<!-- IF user.userslug -->{config.relative_path}/user/{user.userslug}<!-- ELSE -->#<!-- ENDIF user.userslug -->">{user.username}</a></small>

                                <!-- IF user.banned -->
                                <div class="text-center">
                                    <span class="label label-danger">[[user:banned]]</span>
                                </div>
                                <!-- ENDIF user.banned -->
                                <!-- IF user.deleted -->
                                <div class="text-center">
                                    <span class="label label-danger">已删除</span>
                                </div>
                                <!-- ENDIF user.deleted -->
                            </div>
                            <div class="invite-text">
                                <div class="invite-user">
                                    <span class="invite-username-text">[[invite:detail.username]]</span><span component="invite/username" class="invite-username" itemprop="name">{username}</span>
                                    <!-- IF isSelf -->
                                    <span class="invite-email-text">[[invite:detail.email]]</span><span component="invite/email" class="invite-email" itemprop="email">{email}</span>
                                    <!-- ENDIF isSelf -->
                                </div>
                                <hr>
                                <div class="invite-reason" component="invite/reason" >
                                    <span>[[invite:detail.reason]]</span>
                                    <div component="invite/content" class="post-content" itemprop="text">{content}</div>
                                </div>
                                <hr>

								<!-- IF !invited -->
								<div class="invite-statistics">
									<!-- IF !isVote -->
									<div class="invite-upvote">
										<button component="invite/upvote" class="btn btn-primary" type="button">[[invite:detail.upvote]] ({upvoteCount})</button>
										<button component="invite/downvote" class="btn btn-default" type="button">[[invite:detail.downvote]] ({downvoteCount})</button>
									</div>
									<!-- ENDIF !isVote -->

									<ul class="statistics-list small-text">
										<li class="vote-up">目前绝对支持票数: <span component="invite/result-count">{resultVoteCount}</span>票,（其中支持<span component="invite/upvote-count">{upvoteCount}</span>票，反对<span component="invite/downvote-count">{downvoteCount}</span>票）</li>
										<li class="member-count">社区总人数：{userCount}人</li>
										<li class="vote-pass">提名通过比例：{votePercent}%</li>
										<li class="vote-need-count">提名总需票数：<span component="invite/need-vote">{needVote}</span>票</li>
										<li class="vote-remain-count">通过提名还需要的票数：<span component="invite/remain-vote">{remainVote}</span>票</li>
									</ul>
									<hr>
								</div>
								<!-- ENDIF !invited -->

                                <div class="invite-course" component="invite/reason" >
                                    <span>[[invite:detail.invite_course]]</span>
                                </div>
                                <ol component="invite/course" class="course-list small-text">
                                    <li>{createdTime} {user.username} 提名 {username} 进入社区</li>
                                    <!-- IF !invited -->
                                    <!--<li>到目前共获得 <span component="invite/vote-count">{inviteCount}</span> 票支持</li>-->
                                    <!-- ELSE -->
                                    <li>{invitedTime} 对 {username} 的提名已获得 {inviteCount} 票支持，达到邀请票数，邀请邮件已经发出</li>
									<!-- IF isDelivered -->
									<li>{trackDeliverTime} 邀请邮件已经到达 {username} 的信箱，但还没有被查阅</li>
									<!-- ENDIF isDelivered -->
									<!-- IF isOpened -->
									<li>{trackOpenTime} 邀请邮件被查阅</li>
									<!-- ENDIF isOpened -->
									<!-- IF isClicked -->
									<li>{trackClickTime} 邀请链接被点击</li>
									<!-- ENDIF isClicked -->
                                    <!-- ENDIF !invited -->
                                    <!-- IF joined -->
                                    <li class="small-text joined">{username} 已在某时接受邀请重生于社区</li>
                                    <!-- ELSE -->
                                    <!-- IF notJoined -->
                                    <li>{expiredTime} 发给 {username} 的邀请，在{expiredText}内未注册进来，本次邀请失败</li>
                                    <!-- ENDIF notJoined -->
                                    <!-- ENDIF joined -->
                                    <!-- IF inviterDeleted -->
                                    <li>{deletedTime} {username} 被删除离开社区</li>
                                    <!-- ENDIF inviterDeleted -->
                                    <!-- IF user.deleted -->
                                    <li>提名人退出社区了</li>
                                    <!-- ENDIF user.deleted -->
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="topic-footer">
                    <div class="row">
                        <span class="post-tools">
                            <!-- IF !isSelf -->
                            <!-- IF user.userslug -->
                            <!-- IF loggedIn -->
                            <!-- IF !config.disableChat -->
                            <button component="invite/chat" class="btn btn-sm btn-link chat" type="button" title="[[topic:chat]]"><i
                                    class="fa fa-comment"></i><span class="hidden-xs-inline"> [[topic:chat]]</span></button>
                            <!-- ENDIF !config.disableChat -->
                            <!-- ENDIF loggedIn -->
                            <!-- ENDIF user.userslug -->
                            <!-- ENDIF !isSelf -->

                            <!-- IF canControl -->
                            <!-- IF !invited -->
                            <!-- IF isSelf -->
                                <button component="invite/edit" class="btn btn-sm btn-link edit" type="button" title="[[topic:edit]]"><i
                                        class="fa fa-pencil"></i><span class="hidden-xs-inline"> [[topic:edit]]</span></button>
                                <button component="invite/delete" class="btn btn-sm btn-link delete" type="button" title="[[topic:delete]]"><i
                                        class="fa fa-trash-o"></i><span class="hidden-xs-inline"> [[topic:delete]]</span></button>
                            <!-- ENDIF isSelf -->
                            <!-- ENDIF !invited -->
                            <!-- ENDIF canControl -->
                            <button component="invite/reply" class="btn btn-sm btn-link" type="button"><i class="fa fa-reply"></i><span class="hidden-xs-inline"> [[topic:reply]]</span></button>
                        </span>
                    </div>
                </div>
            </div>
        </li>

        <!-- BEGIN posts -->
        <li component="post" class="post-row" <!-- IMPORT partials/data/topic.tpl -->>
			<a component="post/anchor" name="{posts.index}"></a>

			<meta itemprop="datePublished" content="{posts.relativeTime}">
			<meta itemprop="dateModified" content="{posts.relativeEditTime}">

			<div class="topic-item">
				<div class="topic-body">
					<div class="row">
						<div class="col-md-12">
							<div class="topic-profile-pic hidden-xs text-center">
								<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
									<img src="{posts.user.picture}" alt="{posts.user.username}" class="profile-image user-img" title="{posts.user.username}">
								</a>
								<small class="username" title="{posts.user.username}"><a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">{posts.user.username}</a></small>

								<!-- IF posts.user.banned -->
								<div class="text-center">
									<span class="label label-danger">[[user:banned]]</span>
								</div>
								<!-- ENDIF posts.user.banned -->

								<!-- IMPORT partials/topic/badge.tpl -->
							</div>
							<div class="topic-text">
								<!-- IF @first -->
								<h3 class="topic-title">
									<p component="post/header" class="topic-title" itemprop="name"><i class="fa fa-thumb-tack <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->"></i> <i class="fa fa-lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->"></i> <span component="topic/title">{title}</span></p>
									<hr>
								</h3>
								<!-- ENDIF @first -->
								<div component="post/content" class="post-content" itemprop="text">{{posts.content}}</div>
								<!-- IF posts.user.signature -->
								<div class="post-signature">{posts.user.signature}</div>
								<!-- ENDIF posts.user.signature -->
							</div>
						</div>
					</div>
				</div>

                <div class="topic-footer">
                    <div class="row">
                        <div class="">
                            <small class="pull-right">
									<span>
										<!-- IF posts.user.userslug -->
										<i component="user/status" class="fa fa-circle status {posts.user.status}" title='[[global:{posts.user.status}]]'></i>
										<!-- ENDIF posts.user.userslug -->
										<span data-username="{posts.user.username}" data-uid="{posts.user.uid}">
											<!-- IF posts.user.userslug -->
											[[global:user_posted_ago, <strong><a href="{config.relative_path}/user/{posts.user.userslug}" itemprop="author">{posts.user.username}</a></strong>, <span class="timeago" title="{posts.relativeTime}"></span>]]
											<!-- ELSE -->
											[[global:guest_posted_ago, <span class="timeago" title="{posts.relativeTime}"></span>]]
											<!-- ENDIF posts.user.userslug -->
										</span>
									</span>

                                <!-- IF posts.editor.username -->
                                <span>, [[global:last_edited_by_ago, <strong><a href="{config.relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</span>
                                <!-- ENDIF posts.editor.username -->
                            </small>
                            <span class="post-tools">
                                <button component="post/reply" class="btn btn-sm btn-link" type="button"><i class="fa fa-reply"></i><span class="hidden-xs-inline"> [[topic:reply]]</span></button>
                            </span>
                        </div>
                    </div>
                </div>
			</div>
        </li>

        <!-- END posts -->
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
