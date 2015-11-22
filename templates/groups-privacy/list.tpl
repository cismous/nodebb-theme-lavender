<div class="row">
	<div class="col-lg-4">
		<button class="btn btn-primary" data-action="privacy-new"><i class="fa fa-plus"></i> 新建隐私群组</button>
	</div>
	<div class="col-lg-8">
		<div class="col-xs-3 text-left pull-right">
			<select class="form-control" id="search-sort">
				<option value="alpha">[[groups:details.group_name]]</option>
				<option value="count">[[groups:details.member_count]]</option>
				<option value="date">[[groups:details.creation_date]]</option>
			</select>
		</div>
		<div class="col-xs-5 text-left pull-right">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search" name="query" value="" id="search-text">
				<span id="search-button" class="input-group-addon search-button"><i class="fa fa-search"></i></span>
			</div>
		</div>
	</div>
</div>

<hr />

<div component="groups/container" class="row" id="groups-list" data-nextstart={nextStart}>
	<!-- IF groups.length -->
	<!-- IMPORT partials/groups-privacy/list.tpl -->
	<!-- ELSE -->
	<div class="col-xs-12">
		<div class="alert alert-warning">
			[[groups:no_groups_found]]
		</div>
	</div>
	<!-- ENDIF groups.length -->
</div>
