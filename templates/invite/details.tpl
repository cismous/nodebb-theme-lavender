<div class="topic" id="invite-detail">
    <!-- IMPORT partials/breadcrumbs.tpl -->

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
                                <div class="invite-username">
                                    <span>提名人： </span><span component="invite/username" class="invite-username" itemprop="name">{username}</span>
                                </div>
                                <hr>
                                <!-- IF isSelf -->
                                <div class="invite-email">
                                    <span>提名人邮箱： </span><span component="invite/email" class="invite-email" itemprop="email">{email}</span>
                                </div>
                                <hr>
                                <!-- ENDIF isSelf -->
                                <div class="invite-reason" component="invite/reason" >
                                    <span>题名理由: </span>
                                    <span component="invite/content" class="post-content" itemprop="text">{content}</span>
                                </div>
                                <!-- IF invited-->
                                <hr>
                                <div class="invited">
                                    <span class="time">{invitedTime}</span><span> [[invite:email.invited]]</span>
                                </div>
                                <!-- ENDIF invited-->
                                <!-- IF joined-->
                                <div class="joined">该用户已于某时接受邀请进入社区</div>
                                <!-- ENDIF joined-->
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
                                    <i class="fa fa-circle status {user.status}" title='[[global:{user.status}]]'></i>
                                    <!-- ENDIF user.userslug -->
                                    <span class="username-field" data-username="{user.username}" data-uid="{user.uid}">
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

                            <!-- IF !reputation:disabled -->
                            <button component="invite/upvote" class="btn btn-primary<!-- IF joined--> btn-success active<!-- ELSE --><!-- IF invited--> btn-danger<!-- ENDIF invited--><!-- ENDIF joined-->" type="button">[[invite:detail.upvote]] <span component="invite/vote-count" class="badge votes" data-votes="inviteCount">{inviteCount}</span></button>
                            <!-- ENDIF !reputation:disabled -->

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

<!-- IMPORT partials/variables/invite.tpl -->