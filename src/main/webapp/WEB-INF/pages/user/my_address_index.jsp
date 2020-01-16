<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="card mb-3">
	<div class="card-header">
		<i class="fas fa-table"></i> 收货地址
		<button type="button" class="btn btn-info btn-sm float-right" id="button_add">新增</button>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"></div>
		</div>
	</div>
</div>
<!-- Logout Modal-->
<div class="modal fade" id="modal_address" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					地址<span id="action_info"></span>
				</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<form id="form_address_add_edit">
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">省：</label>
						<div class="col-sm-7">
							<select class="form-control validate[required,ajax[ajaxaddressName]]" id="provinceCode" name="provinceCode">
								<c:if test="${!empty areaList}">
									<c:forEach items="${areaList}" var="area">
										<option value="${area.areaCode}">${area.areaName}</option>
									</c:forEach>
								</c:if>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">市：</label>
						<div class="col-sm-7">
							<select class="form-control validate[required,ajax[ajaxaddressName]]" id="cityCode" name="cityCode">
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">区（县）：</label>
						<div class="col-sm-7">
							<select class="form-control validate[required,ajax[ajaxaddressName]]" id="districtCode" name="districtCode">
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">详细地址</label>
						<div class="col-sm-7">
							<textarea class="form-control validate[required]" name="detailedAddress" id="detailedAddress"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">邮政编码：</label>
						<div class="col-sm-7">
							<input type="text" class="form-control validate[required,ajax[ajaxaddressName]]" id="zipCode" name="zipCode">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">收货人电话：</label>
						<div class="col-sm-7">
							<input type="text" class="form-control validate[required,ajax[ajaxaddressName]]" id="receivePhone" name="receivePhone">
						</div>
					</div>
					<input type="hidden" name="rowId" id="rowId" />
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" type="button" id="button_submit">提交</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="assert/pages/my-address .js"></script>