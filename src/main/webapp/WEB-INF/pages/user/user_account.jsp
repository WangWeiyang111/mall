<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="card mb-3">
	<div class="card-header">
		<i class="fas fa-table"></i> 个人账户
		<button type="button" class="btn btn-info btn-sm float-right" id="button_delete" rowId="${sessionScope.userSession.rowId}" >注销账户</button>
		<button type="button" class="btn btn-info btn-sm float-right" id="button_out">退出账户</button>
	</div>
	<div class="card-body">
		<!-- 搜索页面开始 -->
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<form id="form_user_edit">
					<div class="form-row align-items-center">
						<div class="col-auto my-1">
							<input type="text" class="form-control" name="userName" placeholder="用户名称" value="${sessionScope.userSession.userName}">
						</div>
						<div class="col-auto my-1">
							<input type="text" class="form-control" name="userCode" placeholder="用户账号" value="${sessionScope.userSession.userCode}">
						</div>
						<div class="col-auto my-1">
							<input type="password" class="form-control" name="userPass" placeholder="用户密码" value="${sessionScope.userSession.userPass}">
						</div>
						<div class="col-auto my-1">
							<input type="text" class="form-control" name="userPhone" placeholder="用户电话" value="${sessionScope.userSession.userPhone}">
						</div>
						<input type="hidden" name="rowId" value="${sessionScope.userSession.rowId}"/>
						<div class="col-auto my-1">
							<!-- <button type="reset" class="btn btn-dark">重置</button> -->
							<button type="button" class="btn btn-primary" id="button_goupdate" rowId="${sessionScope.userSession.rowId}">修改账户</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- 搜索页面结束 -->
		<div class="table-responsive">
			<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"></div>
		</div>
	</div>
</div>



<!-- Logout Modal -->
<div class="modal fade" id="modal_user" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					用户<span id="action_info"></span>
				</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<form id="form_user_add_edit">
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">用户名称</label>
						<div class="col-sm-7">
							<input type="text" class="form-control validate[required,ajax[ajaxRoleName]]" id="userName" name="userName"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">用户账号</label>
						<div class="col-sm-7">
							<input class="form-control validate[required]" name="userCode" id="userCode"/>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">用户密码</label>
						<div class="col-sm-7">
							<textarea class="form-control validate[required]" name="userPass" id="userPass"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">用户电话</label>
						<div class="col-sm-7">
							<input class="form-control validate[required]" name="userPhone" id="userPhone"/>
						</div>
					</div>
					<input type="hidden" name="rowId" id="rowId" value="${sessionScope.userSession.rowId}"/>
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" type="button" id="button_submit">提交</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="assert/pages/user_update.js"></script>




