<div class="composer vote-composer">

	<div class="composer-container">

        <div class="form-group">
            <label for="username" class="control-label">[[vote:composer.invite_username]]</label>
            <input class="form-control" type="text" placeholder="[[vote:composer.type_username]]" name="username" id="username" autocorrect="off" autocapitalize="off" />
        </div>
        <div class="form-group">
            <label for="email" class="control-label">[[vote:composer.invite_email]]</label>
            <input class="form-control" type="text" placeholder="[[vote:composer.type_email]]" name="email" id="email" autocorrect="off" autocapitalize="off" />
        </div>
		<div class="btn-toolbar formatting-bar">
            <div class="vote-reason">[[vote:composer.invite_reason]]</div>
			<div class="btn-group">
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-bold"></i></span>
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-italic"></i></span>
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-list"></i></span>
				<span class="btn btn-link" tabindex="-1"><i class="fa fa-link"></i></span>

				<!--[if gte IE 9]><!-->
					<span class="btn btn-link img-upload-btn hide" tabindex="-1">
						<i class="fa fa-picture-o"></i>
					</span>
					<span class="btn btn-link file-upload-btn hide" tabindex="-1">
						<i class="fa fa-upload"></i>
					</span>
				<!--<![endif]-->

				<span class="btn btn-link help hidden" tab-index="-1"><i class="fa fa-question"></i></span>

				<form id="fileForm" method="post" enctype="multipart/form-data">
					<!--[if gte IE 9]><!-->
						<input type="file" id="files" name="files[]" multiple class="gte-ie9 hide"/>
					<!--<![endif]-->
					<!--[if lt IE 9]>
						<input type="file" id="files" name="files[]" class="lt-ie9 hide" value="Upload"/>
					<![endif]-->

				</form>

			</div>
			<div class="btn-group pull-right action-bar">
				<button class="btn btn-default" data-action="discard" tabIndex="5"><i class="fa fa-times"></i> [[topic:composer.discard]]</button>
				<button class="btn btn-primary" data-action="post" tabIndex="4"><i class="fa fa-check"></i> [[topic:composer.submit]]</button>
			</div>
		</div>

		<div class="row write-preview-container">
			<div class="col-md-6 col-sm-12 write-container">
				<textarea class="write" tabIndex="3"></textarea>
			</div>
			<div class="col-md-6 hidden-sm hidden-xs preview-container">
				<div class="preview well"></div>
			</div>
		</div>

		<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>

		<div class="resizer"><div class="trigger text-center"><i class="fa fa-chevron-up"></i></div></div>
	</div>
</div>