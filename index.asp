<!--#include file="conn.asp"-->
<!--#include file="sp_inc/class_page.asp"-->
<!--#include file="plugIn/Setting.Config.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=config_sitename%></title>
<meta name="keywords" content="<%=config_seokeyword%>">
<meta name="description" content="<%=config_seocontent%>">
<link href="css/public.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.proLi{ width:160px; line-height:30px; border-bottom:#CCCCCC solid 1px; display:block; background:url(images/li.jpg) no-repeat 30px 50%; padding-left:50px; margin-left:32px;}
 -->
</style>
</head>
<body>
<div id="container">
<table id="__01" width="991" height="837" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		<!--#include file="head.asp" -->
		</td>
	</tr>
	<tr>
		<td>
		<table id="__01" width="991" height="639" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
				<table id="__01" width="991" height="451" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<!--#include file="left.asp" --></td>
						<td>
						<table id="__01" width="786" height="451" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td>
								<!--#include file="head2.asp" -->
								</td>
							</tr>
							<tr>
								<td width="786" height="22">								</td>
							</tr>
							<tr>
								<td>
								<table id="__01" width="786" height="216" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td>
											<img src="images/index_ff_01.jpg" width="362" height="31" alt=""></td>
										<td>
											<img src="images/index_ff_02.jpg" width="424" height="31" alt=""></td>
									</tr>
									<tr>
										<td>
										<table id="__01" width="362" height="185" border="0" cellpadding="0" cellspacing="0">
												<tr>
													<td>
														<img src="images/index_kk_01.jpg" width="145" height="185" alt=""></td>
													<td width="217" height="185">
													<div id="index_gsjj">
													<p>宅急送公司恪守“安全、准确、亲切、视服务为生命”的经营训诫。自1994年成立以来，公司以跨越式成长的发展进度，在全国建立了庞大的“快运网络”，以优质的服务赢得了国内上千家著名企业以及广大民众的</p>
													</div>
													</td>
												</tr>
											</table></td>
										<td width="424" height="185">
									    <ul id="index_news">
								<%
									set rs = UICon.Query("select top 8 * from user_news order by id desc")
									do while not rs.eof
								
								%>
									<li>· <a  href="news_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" >[业内新闻]<%
									if len(rs("title"))>24 then	
									response.write left(rs("title"),23)&"..."
									else
									response.write rs("title")
									end if
									%></a></li>	
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
										</ul>
										</td>
									</tr>
								</table>								</td>
							</tr>
						</table>						</td>
					</tr>
				</table>				</td>
			</tr>
			<tr>
				<td>
					<img src="images/index_ss_02.jpg" width="991" height="35" alt=""></td>
			</tr>
			<tr>
				<td background="images/index_ss_03.jpg" width="991" height="142">
										<div style="margin:0 10px">			
													<!--内容开始 -->
											<script src="JS/MSClass.js"></script>
									<div id="marqueediv6" style=" text-align:center;width:950px;height:140px;margin-left:13px; padding-top:5px;">
								  <table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
									  
									   <%
			
							set rs = UICon.QUery("select top 20 * from user_case order by hots desc ")
							if rs.recordcount<>0 then
							do while not rs.eof
							'''''''''怎么分多列''''''
							''该页面采用DIV+css。所以分列实现起来非常方便不需要改页面
							''只需要改变css中 procontent 标签下的li的宽度即可
							''一列 只要procontent 的宽度和li的宽度一致
							''需要几列 只要将li的宽度设置为 procontent的几分之几
						   %>
										<td width="122"><table width="122" border="0" align="center" cellpadding="0" cellspacing="0"  height="135">
											<tr>
											  <td width="122"><a href="case_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>"><img src="<%=rs("Field_picture")%>"  height="100" ; width="150"   border="0" style="margin-top:5px"/></a>
											  <a href="case_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" style="display:block; text-align:center; line-height:20px; color:#fff; margin-top:5px;"><%=rs("title")%></a>								  </td>
											</tr>
										</table></td>
										<td width="10">&nbsp;</td>
						  <%
							rs.movenext
							loop
							end if
							%>              
									  </tr>
					  </table>
					</div>
									<script>new Marquee("marqueediv6",2,1,950,140,20,0,0)</script>
									<!--内容结束 -->
					</div>
				</td>
			</tr>
			<tr>
				<td width="991" height="11" >				</td>
			</tr>
		</table>		</td>
	</tr>
	<tr>
		<td>
		<!--#include file="footer.asp" -->
		</td>
	</tr>
</table>
</div>
</body>
</html>
