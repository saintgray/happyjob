<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
.content {
	padding-top: 30px;
}
div.row1 {
	width: 100%;
	height: 30%;
	display: flex;
	padding-bottom: 10px;
}
div.row {
	width: 100%;
	display: flex;
}
div.left {
	width: 50%;
	float: left;
	box-sizing: border-box;
}
div.right {
	width: 50%;
	float: right;
	box-sizing: border-box;
}
#pdpopupcod {
	width: 289px;
	height: 245px;
}
#pdpopupcodright{
	width: 289px;
	height: 309px;
}
.pdmdnobox {
	margin-left: 10px;
}
.compbox {
	margin-left: 10px;
}
.btnType {
	cursor: pointer;
}
</style>

<div id="pdpopuptable" style="margin: 10px;">
	<dl>
		<dd class="content">
			<input type="hidden" id="pdno" name="pdno" value="${pdno}"> <!-- 수정시 필요한 num 값을 넘김  -->
			
				<div class="row">
					<div class="left">
						<table class="col">
							<tbody id="pdpopupcodup">
								<tr>
									<th style="width: 65px;">제품 사진</th>
									<td style="width: 20px; height: 10px;">
										<input type="file" id="fileImage" name="fileImage" accept="image/*"/>
									</td>
								</tr>
							</tbody> <!-- tbody 끝 -->
						</table>
					
						<div class="leftup">
						<table class="col">
							<tbody id="pdpopupcod"> <!-- tbody 시작 -->
								<tr id="fileimg">
									<th style="width: 220px;"><img style="width: 180px;" id="photo" src=""></th>
								</tr>
							</tbody>
						</table>
						</div>
						
						<div class="leftdown">
						</div>
					</div>
					
					<div class="right">
					<table class="col">
						<tbody id="pdpopupcodright"> <!-- tbody 시작 -->
							<tr>
								<th style="width: 80px;">카테고리</th>
								<td colspan="12">
								<select id="pdcodebox" name="pdcode" style="width: 288px;" onchange="selectpdcd()"></select>
								</td>
							</tr>
							<tr>
								<th style="width: 80px;">모델번호</th>
								<td colspan="12">
								<select id="pdmdnobox" name="pdmdno" class="pdmdnobox" style="width: 288px; margin: 0px;" onchange="selectmdcd()"></select>
								</td>
							</tr>
							<tr>
								<th style="width: 80px;">제조사</th>
								<td colspan="12">
								<select id="compbox" name="pdmdcop" class="compbox" style="width: 288px; margin: 0px;"></select>
								</td>
							</tr>
							<tr>
								<th style="width: 80px;">제품명</th>
								<td colspan="12"><input type="text" class="inputTxt p100" name="pdnm" id="pdnm02" value="${pdnm}"/></td>
							</tr>
							<tr>
								<th>상세정보</th>
								<td colspan="12"><textarea class="inputTxt p100" name="pdinfo" id="pdinfo" value="${pdinfo}"></textarea></td>
							</tr>
						</tbody> <!-- tbody 끝 -->
					</table>
					</div>
				</div>
				
			<div class="btn_areaC mt30" style="margin-bottom: 10px;">
				<input type="hidden" name="disoragreeAction" id="disoragreeAction" value="">
				<a class="btnType blue" id="insertPDCod" name="btn"><span>저장</span></a>
				<a class="btnType blue" id="deletePDCod" name="btn"><span>삭제</span></a>
				<a class="btnType gray" id="btnCloseCod" name="btn"><span>취소</span></a>
			</div>
		</dd>
	</dl>
	<a href="" class="closePop"><span class="hidden">닫기</span></a>
</div>

<script>

//파일 미리보기
function readImage(input) {
	
    if(input.files && input.files[0]) {
        
        const reader = new FileReader()
        
        reader.onload = e => {
        	const previewImage = document.getElementById("photo");
            previewImage.src = e.target.result;
        }
        
        reader.readAsDataURL(input.files[0])
    }
}

$("#fileImage").change(function(e){
	
	  readImage(e.target);
	
});


</script>
<!--// 모달팝업 -->
	