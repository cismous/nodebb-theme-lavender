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
    </div>
</div>
