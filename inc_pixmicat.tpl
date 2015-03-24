<!--&THEMENAME-->Pixmicat_Responsive<!--/&THEMENAME-->
<!--&THEMEVER-->150317<!--/&THEMEVER-->
<!--&THEMEAUTHOR-->Suzhou65<!--/&THEMEAUTHOR-->
<!--&HEADER--><!DOCTYPE html>
<html lang="zh-TW"><head>
<meta charset="utf-8">
<meta name="robots" content="index, follow"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=yes"/>
<title>{$TITLE}</title>
<script type="text/javascript" async src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>  
<!--將 mainstyle.css 導入 inc_pixmicat.tpl，讓轉譯速度加快-->
<!--所有的欄位、字型代號均保持 Pixmicat 預設，除增加用於放置廣告的 #AD 欄位-->

    <style type="text/css">

<!--當裝置橫向解析度大於 720px，保持正常版型-->
@media all{
    html{background:#FFFFEF;color:#800000;font-family: sans-serif;}
    #postinfo{font-size:0.8em} 
    #toplink{text-align:right}
    #footer{margin:0px auto;}
    form{padding:0;margin:0}
    a{color:#0921EA;text-decoration:none;font-family:sans-serif;}
    small{font-size:0.8em}
    hr{clear:left}
    img{border:0}
    h1{color:#800000;text-align:center;margin:0 auto;}
    hr.top{width:90%;height:1px;}
    .Form_bg{background:#EA8}
    .hide_btn{float:right;width:4em;height:1.25em;overflow:hidden;text-align:center;background:#F0E0D6;}
    .show{color:#0921EA}
	.hide{display:none}
	.threadpost{ }
	.reply{display:table;margin:0.5ex 1em 0 1em;background:#F0E0D6;}
	.replywrap{display:table-cell}
	.reply_hl{background: #F0D5B7}
	.name{color:#117743;font-weight:bold;}
	.admin_cap{color:#0000FF}
	.img {float:left;margin:1ex 2ex;} 
	.title{color:#CC1105;font-size:1.125em;font-weight:bold;}
	.nor{font-weight:normal}
	.quote{word-wrap:break-word;word-break:break-all;margin:1em 2em}
	.resquote{color:#789922}
	.category{font-size:0.8em;color:gray;}
	.warn_txt{color:#F00000;font-weight:bold;}
	.warn_txt2{color:#707070}
	.bar_reply{background:#E04000;color:#FFF;font-weight:bold;text-align:center;}
	.bar_admin{background:#E08000;color:#FFF;font-weight:bold;text-align:center;}
	.ListRow1_bg{background:#D6D6F6}
	.ListRow2_bg{background:#F6F6F6}
    }

<!--Google AdSense 廣告欄位最適當寬度為 728px，此為置中語法-->
@media only screen and (min-width:728px){
    #AD{margin:0px auto;}
    }

<!--當裝置橫向解析度低於 720px，切換為行動版，而行動版最低解析度為 320px-->
@media only screen and (max-width:720px){
    html{font-size:0.9em;padding:0px;background:#FFFFEF;color:#800000;font-family:sans-serif;min-width:320px}
	#toplink{display:none}
    #fupfile{display:block}
    #header{margin:0px auto;}
    #footer{margin:0px auto;}
    #fcom{max-width:200px}
    #AD{max-width:100%;margin:0px auto;}
    #page_switch{clear:center}
    form{max-width:100%}
	input[type="text"]{max-width:90%}
	ul{padding-left:0.9em}
    a{font-size:0.9em;color:#00E;text-decoration:none;font-family:sans-serif;}
    small{font-size:0.9em}
	h1{font-size:0.9em;color:#800000;text-align:center;margin:0 auto;}
    hr{clear:both;max-width:98%;}
	img{border:0}
	.img{margin:0.5ex 0.5ex;max-width:100%;height:auto;display:block;float:none;}
	.reply{clear:left;margin:0.5ex 0 0 0; max-width:100%;}
	.replywrap{clear:left;margin:0.5ex 0 0 0; max-width:100%;}
    .resquote{font-size:0.9em;color:#789922}
	.quote{word-wrap:break-word;word-break:break-all;margin:5px 10px}
	.pushpost{padding:0.9em}
	.Form_bg{background:#EA8;min-width:32px;}
    }
</style>
<!--/&HEADER-->
<!--&JSHEADER-->
<script type="text/javascript">
// <![CDATA[
var msgs=['{$JS_REGIST_WITHOUTCOMMENT}','{$JS_REGIST_UPLOAD_NOTSUPPORT}','{$JS_CONVERT_SAKURA}'];
var ext="{$ALLOW_UPLOAD_EXT}".toUpperCase().split("|");
// ]]>
</script>
<script type="text/javascript" async src="mainscript.js"></script>
<!--[if lt IE 8]><script type="text/javascript" src="iedivfix.js"></script><![endif]-->
<!--/&JSHEADER-->
<!--&TOPLINKS-->
<div id="toplink">
{$HOME} {$SEARCH} {$HOOKLINKS} {$TOP_LINKS} {$STATUS} {$ADMIN} {$REFRESH}
</div>
<!--/&TOPLINKS-->
<!--&BODYHEAD-->
<body>
<div id="header">
<!--&TOPLINKS/-->
<br />
<h1>{$TITLE}</h1>
<div id="AD" align="center">
<!--廣告程式碼-->
</div>
<hr/></div>
<!--/&BODYHEAD-->
<!--&POSTFORM-->
<form action="{$SELF}" method="post" enctype="multipart/form-data" onsubmit="return c();" id="postform_main">
<div id="postform">
<!--&IF($FORMTOP,'{$FORMTOP}','')-->
<input type="hidden" name="mode" value="{$MODE}" />
<input type="hidden" name="MAX_FILE_SIZE" value="{$MAX_FILE_SIZE}" />
<input type="hidden" name="upfile_path" value="" />
<!--&IF($RESTO,'{$RESTO}','')-->
<div style="text-align: center;">
<table id="postform_tbl" style="padding: 10px;border-spacing; 10px; margin: 0px auto; text-align: left;">
<tr><td class="Form_bg"><b>{$FORM_NAME_TEXT}</b></td><td>{$FORM_NAME_FIELD}</td></tr>
<tr><td class="Form_bg"><b>{$FORM_EMAIL_TEXT}</b></td><td>{$FORM_EMAIL_FIELD}</td></tr>
<tr><td class="Form_bg"><b>{$FORM_TOPIC_TEXT}</b></td><td>{$FORM_TOPIC_FIELD}{$FORM_SUBMIT}</td></tr>
<tr><td class="Form_bg"><b>{$FORM_COMMENT_TEXT}</b></td><td>{$FORM_COMMENT_FIELD}</td></tr>
<!--&IF($FORM_ATTECHMENT_FIELD,'<tr><td class="Form_bg"><b>{$FORM_ATTECHMENT_TEXT}</b></td><td>{$FORM_ATTECHMENT_FIELD}[{$FORM_NOATTECHMENT_FIELD}<label for="noimg">{$FORM_NOATTECHMENT_TEXT}</label>]','')-->
<!--&IF($FORM_CONTPOST_FIELD,'[{$FORM_CONTPOST_FIELD}<label for="up_series">{$FORM_CONTPOST_TEXT}</label>]','')-->
<!--&IF($FORM_ATTECHMENT_FIELD,'</td></tr>','')-->
<!--&IF($FORM_CATEGORY_FIELD,'<tr><td class="Form_bg"><b>{$FORM_CATEGORY_TEXT}</b></td><td>{$FORM_CATEGORY_FIELD}<small>{$FORM_CATEGORY_NOTICE}</small></td></tr>','')-->
<tr><td class="Form_bg"><b>{$FORM_DELETE_PASSWORD_TEXT}</b></td><td>{$FORM_DELETE_PASSWORD_FIELD}<small>{$FORM_DELETE_PASSWORD_NOTICE}</small></td></tr>
{$FORM_EXTRA_COLUMN}
<tr><td colspan="2">
<div id="postinfo">
<ul>{$FORM_NOTICE}
<!--&IF($FORM_NOTICE_STORAGE_LIMIT,'{$FORM_NOTICE_STORAGE_LIMIT}','')-->
{$HOOKPOSTINFO}
{$ADDITION_INFO}
</ul>
<noscript><div>{$FORM_NOTICE_NOSCRIPT}</div></noscript>
</div>
</td></tr>
</table>
</div>
<script type="text/javascript">l1();</script>
<hr/>
</div>
</form>
<!--&IF($FORMBOTTOM,'{$FORMBOTTOM}','')-->
<!--/&POSTFORM-->
<!--&FOOTER-->
<div id="footer" align="center">
<div id="AD" align="center">
<!--廣告程式碼-->
</div>
<script type="text/javascript">preset();</script>
<!--GoogleAnalytics程式碼-->
</br>
{$FOOTER}
</div>
</body>
</html>
<!--/&FOOTER-->
<!--&ERROR-->
<div id="error">
<div style="text-align: center; font-size: 1.5em; font-weight: bold;">
<span style="color: red;">{$MESG}</span><p />
<a href="{$SELF2}">{$RETURN_TEXT}</a>　<a href="javascript:history.back();">{$BACK_TEXT}</a>
</div>
<hr/>
</div>
<!--/&ERROR-->
<!--&THREAD-->
<div class="threadpost" id="r{$NO}">
{$IMG_BAR}<!--&IF($IMG_BAR,'<br />','')-->{$IMG_SRC}<input type="checkbox" name="{$NO}" value="delete" /><span class="title">{$SUB}</span>
{$NAME_TEXT}<span class="name">{$NAME}</span> [{$NOW}] {$QUOTEBTN}&#160;{$REPLYBTN}
<div class="quote">{$COM}</div>
<!--&IF($CATEGORY,'<div class="category">{$CATEGORY_TEXT}{$CATEGORY}</div>','')-->
{$WARN_OLD}{$WARN_BEKILL}{$WARN_ENDREPLY}{$WARN_HIDEPOST}</div>
<!--/&THREAD-->
<!--&REPLY-->
<div class="reply" id="r{$NO}"><div class="replywrap">
<input type="checkbox" name="{$NO}" value="delete" /><span class="title">{$SUB}</span> {$NAME_TEXT}<span class="name">{$NAME}</span> [{$NOW}] {$QUOTEBTN} &#160;<!--&IF($IMG_BAR,'<br />&#160;','')-->{$IMG_BAR} {$IMG_SRC}
<div class="quote">{$COM}</div>
<!--&IF($CATEGORY,'<div class="category">{$CATEGORY_TEXT}{$CATEGORY}</div>','')-->
{$WARN_BEKILL}</div></div>
<!--/&REPLY-->
<!--&SEARCHRESULT-->
<div class="threadpost">
<span class="title">{$SUB}</span>
{$NAME_TEXT}<span class="name">{$NAME}</span> [{$NOW}] No.{$NO}
<div class="quote">{$COM}</div>
<!--&IF($CATEGORY,'<div class="category">{$CATEGORY_TEXT}{$CATEGORY}</div>','')-->
</div>
<!--&REALSEPARATE/-->
<!--/&SEARCHRESULT-->
<!--&THREADSEPARATE-->
<hr />
<!--/&THREADSEPARATE-->
<!--&REALSEPARATE-->
<hr />
<!--/&REALSEPARATE-->
<!--&DELFORM-->
<div id="del">
<table style="float: right;">
<tr><td style="text-align:center;white-space: nowrap;">
{$DEL_HEAD_TEXT}[{$DEL_IMG_ONLY_FIELD}<label for="onlyimgdel">{$DEL_IMG_ONLY_TEXT}</label>]<br />
{$DEL_PASS_TEXT}{$DEL_PASS_FIELD}{$DEL_SUBMIT_BTN}
</td></tr>
</table>
</div>
<!--/&DELFORM-->
<!--&MAIN-->
<div id="contents">
{$THREADFRONT}
<form action="{$SELF}" method="post">
<div id="threads" class="autopagerize_page_element">
{$THREADS}
</div>
{$THREADREAR}
<!--&DELFORM/-->
<script type="text/javascript">l2();</script>
</form>
{$PAGENAV}
</div>
<!--/&MAIN-->