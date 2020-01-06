<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="card mb-3">
	<div class="card-header">
		<i class="fas fa-table"></i> 商品管理
		<button type="button" class="btn btn-info btn-sm float-right" id="button_add">新增</button>
	</div>
	<div class="card-body">
		<!-- 搜索页面开始 -->
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<form id="form_search">
					<div class="form-row align-items-center">
						<div class="col-auto my-1">
							<input type="text" class="form-control" name="productName" placeholder="商品名称">
						</div>
						<div class="col-auto my-1">
							<input type="text" class="form-control" name="productCode" placeholder="商品编号">
						</div>
						
						<div class="col-auto my-1">
							<input type="text" class="form-control" name="productPrice" placeholder="商品价格">
						</div>
						<div class="col-auto my-1">
							<input type="text" class="form-control" name="productCount" placeholder="商品库存">
						</div>
						<div class="col-auto my-1">
							<select class="form-control" name="productStatus">
								<option value="">商品状态</option>
								<option value="1">上架</option>
								<option value="2">下架</option>
							</select>
						</div>
						<div class="col-auto my-1">
							<button type="reset" class="btn btn-dark">重置</button>
							<button type="button" class="btn btn-primary" id="#">搜索</button>
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
<!-- Logout Modal-->
<div class="modal fade" id="modal_product" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
					商品<span id="action_info"></span>
				</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<form id="form_product_add_edit" method="post" enctype = "mulitpart-formdata">
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">商品名称</label>
						<div class="col-sm-7">
							<input type="text" class="form-control validate[required]" id="productName" name="productName">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">商品编号</label>
						<div class="col-sm-7">
							<input type="text" class="form-control validate[required]" id="productCode" name="productCode">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">商品图片</label>
						<div class="col-sm-7">
							<input type="file" class="form-control" id="productPictureFile" name="productPictureFile">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">商品价格</label>
						<div class="col-sm-7">
							<input type="text" class="form-control validate[required]" id="productPrice" name="productPrice">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">商品库存</label>
						<div class="col-sm-7">
							<input type="text" class="form-control validate[required]" id="productCount" name="productCount">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">商品状态</label>
						<div class="col-sm-7">
							<select class="form-control validate[required]" name="productStatus" id="productStatus">
								<option value="1">上架</option>
								<option value="2">下架</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">商品简介</label>
						<div class="col-sm-7">
							<textarea class="form-control validate[required]" name="productInfo" id="productInfo"></textarea>
						</div>
					</div>
					<!-- <input type="hidden" name="rowId" id="rowId" /> -->
				</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
					<button class="btn btn-primary" type="button" id="button_submit">提交</button>
				</div>
			</form>
		</div>
	</div>
</div>
<script src="assert/pages/product.js"></script>



