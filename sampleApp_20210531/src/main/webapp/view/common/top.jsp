<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=0.6, maximum-scale=1.5, user-scalable=yes" />

	<link rel="stylesheet" href="css/base.css" />
	<link rel="stylesheet" href="js/jQuery/tablesorter/themes/blue/style.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!--Business Application System Executer 6  -->
	<title>在庫管理システム</title>
</head>

<body>

	<!-- Main Menu  -->
	<div id="ebase6_mainmenu">
		<button id="ebase6_logout" type="button">ログアウト</button>
		
		<!--Excellence Business Application System Executer 6  -->
		在庫管理システム
			<!-- Control Menu  //-->
			<div id="ebase6_controlmenu">
				<input id="ebase6_conmenu_mente" type="image" src="view/image/ico_mente_57_57.png" />
			</div>
		<input type="text" id="ebase_time_boxmain">
		<br><br>
		<script>
		var today = new Date();
		var hour = today.getHours();
		if(hour <10){
			hour = '0'+ hour
		}
		var minute = today.getMinutes();
		if(minute <10){
			minute = '0' + minute
		}
		var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
		var time = hour + ":" + minute;
		var dateTime = date+' '+time;
 		 document.getElementById("ebase_time_boxmain").value = dateTime;
		</script>


	</div>

	<!-- Sub Menu -->


	<!-- Sub Menu List-->
	<!-- Body  -->
	<div id="ebase6_body">
	
		
		<div id = "ebase6_bodyMaterial">
		<!-- 
			<div style="height:70%;overflow-x: scroll;  margin-left: 1em; overflow-y: visible; padding: 0;"><table id = "table_material">
				<tr>
					<th scope = 'col' style ="width:15%;">食材名</th>
					<th scope = 'col' style ="width:5%;">単位</th>
					<th scope = 'col' style ="width:5%;">単価</th>
					<th scope = 'col' style ="width:10%;">消費期間</th>
					<th scope = 'col' style ="width:10%;">仕入れ店</th>
					<th scope = 'col' style ="width:10%;">発注日</th>
					<th scope = 'col' style ="width:10%;">納品予定日</th>
					<th scope = 'col' style ="width:10%;">発注数</th>
					<th scope = 'col' style ="width:25%;">備考</th>
				</tr>
				
				</table>
			</div>
			<button class ="ebase6_createButton">登録</button>
			<button class ="ebase6_editButton">修正</button>
			<div>
			
			
			</div>-->
		</div>
 		
	    <div id="ebase6_nav">

		<!-- レイアウトは良い感じに直して -->
		
		<table id = "table_item">
		<tr>
		<td>メニュー</td>
		<td style="background-color:#6262bf"><a id="goodsView" href="javascript:void(0)">食材リスト </a></td>
		<td style="background-color:#2de28d"><a id="PurchaseOrder" href="javascript:void(0)">発注 </a></td>
		<td style="background-color:#f1d181"><a id="goodsInspt" href="javascript:void(0)">検品 </a></td>
		<td style="background-color:#f5ff45"><a id="Inventory" href="javascript:void(0)">在庫一覧 </a></td>
		<td style="background-color:#f1b51d"><a id="StockCount" href="javascript:void(0)">棚卸 </a></td>
		<td style="background-color:#FF0000"><a id="IDRegister" href="javascript:void(0)">ユーザー登録 </a></td>
		</tr>
		</table>
		<div id ="ebase6_NavButtonGroup">
  			<button id ="ebase6_NavgoodsView" type="button">食材リスト</button>
  			<button id ="ebase6_NavPurchaseOrder" type="button">発注</button><br>
 			<button id ="ebase6_NavgoodsInspt" type="button">検品</button>
 			<button id ="ebase6_NavInventory" type="button">在庫一覧</button><br>
 			<button id ="ebase6_NavStockCount" type="button">棚卸</button>
 			<button id ="ebase6_NavIDRegister" type="button">ユーザー登録 </button>
		</div>


	    	<!-- Mentenuce Menu List -->
			<div id="ebase6_menulist">
				<div id="ebase6_menulist_title">Mentenunce</div>
				<ul>
					<li><a id="initialsetup" href="javascript:void(0)">Initial Setup</a></li>
					<li><a id="xmlexe" href="javascript:void(0)">XML Execute</a></li>
					<li><a id="dbexe" href="javascript:void(0)">DB SQL Execute</a></li>
					<li><a id="addWork" href="javascript:void(0)">Add Work 20180322 Enya</a></li>
				</ul>

			</div>

		</div>

		<div id="datafield"></div>
	</div>




	<!-- Shadow  -->
	<!--<div id="ebase6_shadow"></div>-->

	<!-- Initial Page -->
	<!--<div id="ebase6_initial_body">-->

<!-- <pre>
認証画面作成
</pre>
	<div id="ebase6_initial_head">認証処理</div>
	<table id = "login_ninsyo">
		<tr>
		<td>ユーザー名</td>
		<td><input id = "user_name" type="text" name="user" size="32"></td>
		</tr>
		<tr>
		<td>パスワード</td>
		<td><input id = "pass_word" type="text" name="user" size="32"></td>
		</tr>
	</table>
	<div id="ebase6_initial_bottom">ユーザー名、パスワードを入力してください</div>

		<input type="button" id="ebase6_logon" value="ok"  style="position: absolute; left: 0px; bottom: 0px">
	</div>-->

	<!-- Popup -->
	<div id="ebase6_popup">
		<div id="ebase6_popup_head">
			<div id="ebase6_popup_title"></div>
			<input type="image" src="view/image/icon_close_32.png" id="ebase6_popup_close" style="float:right;right:0;" />
			<div style="clear:both"></div>
    	</div>
    	<div id="ebase6_popup_body">
    	</div>
    	<div id="ebase6_popup_foot">
    	</div>
	</div>
	<div>
	<button id ="ebase6_mainReturn" type="button">Mainに戻る </button>
	</div>

</body>

<!-- スクリプト //-->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/control.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/sqlexe.js"></script>
<script type="text/javascript" src="js/xmlexe.js"></script>
<script type="text/javascript" src="js/enya_addwork.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="js/itemlist.js"></script>
<script type="text/javascript" src="js/orderexe.js"></script>
<script type="text/javascript" src="js/checkexe.js"></script>
<script type="text/javascript" src="js/jQuery/tablesorter/jquery.tablesorter.js"></script>

</html>