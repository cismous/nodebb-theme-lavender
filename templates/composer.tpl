<div class="composer">
	<div class="composer-container">
		<nav class="navbar navbar-fixed-top mobile-navbar visible-xs visible-sm">
			<span class="pull-left">
				<button class="btn btn-primary composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i></button>
			</span>
			<span class="pull-right">
				<button class="btn btn-primary composer-submit" data-action="post" tabindex="-1"><i class="fa fa-chevron-right"></i></button>
			</span>
		</nav>
		<div class="title-container row">
			<!-- IF showHandleInput -->
			<div class="col-sm-3 col-md-12">
				<input class="handle form-control" type="text" tabindex="1" placeholder="[[topic:composer.handle_placeholder]]" value="{handle}" />
			</div>
			<div class="col-sm-9 col-md-12">
				<!-- IF isTopicOrMain -->
				<input class="title form-control" type="text" tabindex="1" placeholder="[[topic:composer.title_placeholder]]" value="{title}"/>
				<!-- ELSE -->
				<span class="title form-control">[[topic:composer.replying_to, "{title}"]]</span>
				<!-- ENDIF isTopicOrMain -->
			</div>
			<!-- ELSE -->
			<div class="<!-- IF isTopic -->col-lg-9<!-- ELSE -->col-lg-12<!-- ENDIF isTopic --> col-md-12">
				<!-- IF isTopicOrMain -->
				<input class="title form-control" type="text" tabindex="1" placeholder="[[topic:composer.title_placeholder]]" value="{title}"/>
				<!-- ELSE -->
				<span class="title form-control">[[topic:composer.replying_to, "{title}"]]</span>
				<!-- ENDIF isTopicOrMain -->
			</div>
			<!-- IF isTopic -->
			<div class="category-list-container col-lg-3 col-md-12">
				<select tabindex="3" class="form-control category-list"></select>
			</div>
			<!-- ENDIF isTopic -->
			<!-- ENDIF showHandleInput -->
		</div>

		<div class="row category-tag-row">
			<div class="btn-toolbar formatting-bar">
				<div class="btn-group">
					<!-- IF supportRecord -->
						<span class="btn record" data-format="record-toggle" tabindex="-1">
							<i class="fa fa-microphone"></i>
						</span>
					<!-- ENDIF supportRecord -->
				</div>

				<div class="btn-group pull-right action-bar hidden-sm hidden-xs">
					<button class="btn btn-default composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i> [[topic:composer.discard]]</button>

					<button class="btn btn-primary composer-submit" data-action="post" tabindex="6"><i class="fa fa-check"></i> [[topic:composer.submit]]</button>
					<!-- IF !isEditing -->
					<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
						<span class="sr-only">[[modules:composer.toggle_dropdown]]</span>
					</button>
					<ul class="dropdown-menu pull-right" role="menu">
						<li><a href="#" data-switch-action="post"><i class="fa fa-fw fa-check"></i> [[topic:composer.submit]]</a></li>
						<!-- IF isAdminOrMod -->
						<li><a href="#" data-switch-action="post-lock"><i class="fa fa-fw fa-lock"></i> [[modules:composer.submit_and_lock]]</a></li>
						<!-- ENDIF isAdminOrMod -->
					</ul>
					<!-- ENDIF !isEditing -->
				</div>

				<!-- IF isTopicOrMain -->
				<div class="tags-container inline-block">
					<input class="tags" type="text" class="form-control" placeholder="[[tags:enter_tags_here, {minimumTagLength}, {maximumTagLength}]]" tabindex="4"/>
				</div>
				<!-- ENDIF isTopicOrMain -->
			</div>
		</div>

		<ul class="record-list list-unstyled">
		</ul>

		<div class="row write-preview-container" style="display: none;">
			<div class="col-md-6 col-sm-12 write-container">
				<div class="help-text">
					[[modules:composer.compose]] <span class="help hidden"><i class="fa fa-question-circle"></i></span>
					<span class="toggle-preview hide">[[modules:composer.show_preview]]</span>
				</div>
				<textarea class="write" tabindex="5"></textarea>
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

		<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>

		<div class="resizer"><div class="trigger text-center"><i class="fa"></i></div></div>
	</div>
</div>
