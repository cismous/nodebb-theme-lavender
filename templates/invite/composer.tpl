<div class="composer invite-composer">
    <div class="composer-container">
        <nav class="navbar navbar-fixed-top mobile-navbar visible-xs visible-sm">
			<span class="pull-left">
				<button class="btn btn-primary composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i></button>
			</span>
			<span class="pull-right">
				<button class="btn btn-primary composer-submit" data-action="post" tabindex="-1"><i class="fa fa-chevron-right"></i></button>
			</span>
        </nav>

        <div class="username-container input-group">
            <span class="input-group-addon">
                <span id="username-notify"><i class="fa fa-circle-o"></i></span>
            </span>
            <label for="username" class="control-label hide">[[invite:composer.type_username]]</label>
            <input class="form-control" tabindex="1" type="text" placeholder="[[invite:composer.type_username]]" value="{username}" name="username" id="username" autocorrect="off" autocapitalize="off"/>
        </div>

        <div class="email-container input-group">
            <span class="input-group-addon">
                <span id="email-notify"><i class="fa fa-circle-o"></i></span>
            </span>
            <label for="email" class="control-label hide">[[invite:composer.type_email]]</label>
            <input class="form-control" tabindex="2" type="text" placeholder="[[invite:composer.type_email]]" value="{email}" name="email" id="email" autocorrect="off" autocapitalize="off"/>
        </div>

        <ul class="row file-list list-unstyled">
        </ul>

        <div class="row category-tag-row">
            <div class="btn-group">
                <input id="post-image-upload" type="file" accept="image/*" style="width: 0; height:0; overflow: hidden;"/>
                <input id="post-file-upload" type="file" accept="image/*" style="width: 0; height:0; overflow: hidden;"/>
            </div>
            <div class="btn-toolbar formatting-bar">
                <div class="invite-reason hide">[[invite:composer.invite_reason]]</div>

                <div class="btn-group pull-right action-bar hidden-sm hidden-xs">
                    <button class="btn btn-default composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i> [[topic:composer.discard]]</button>

                    <button class="btn btn-primary composer-submit" data-action="post" tabindex="4"><i class="fa fa-check"></i> [[topic:composer.submit]]</button>
                    <!-- IF !isEditing -->
                    <!-- IF isAdminOrMod -->
                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                        <span class="sr-only">[[modules:composer.toggle_dropdown]]</span>
                    </button>
                    <ul class="dropdown-menu pull-right" role="menu">
                        <li><a href="#" data-switch-action="post"><i class="fa fa-fw fa-check"></i> [[topic:composer.submit]]</a></li>
                        <li><a href="#" data-switch-action="post-lock"><i class="fa fa-fw fa-lock"></i> [[modules:composer.submit_and_lock]]</a></li>
                    </ul>
                    <!-- ENDIF isAdminOrMod -->
                    <!-- ENDIF !isEditing -->
                </div>
            </div>
        </div>

        <div class="row write-preview-container" style="display: none;">
            <div class="col-md-6 col-sm-12 write-container">
                <div class="help-text">
                    [[modules:composer.compose]] <span class="help hidden"><i class="fa fa-question-circle"></i></span>
                    <span class="toggle-preview hide">[[modules:composer.show_preview]]</span>
                </div>
                <textarea class="write" tabindex="3" placeholder="请在这里输入提名理由"></textarea>
            </div>
            <div class="col-md-6 hidden-sm hidden-xs preview-container">
                <div class="help-text">
                    <span class="toggle-preview">[[modules:composer.hide_preview]]</span>
                </div>
                <div class="preview well"></div>
            </div>
        </div>

        <div class="text-editor">
            <textarea id="text-editor" cols="30" rows="10"></textarea>
        </div>

        <div class="resizer">
            <div class="trigger text-center"><i class="fa"></i></div>
        </div>
    </div>
</div>
