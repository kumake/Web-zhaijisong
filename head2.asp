								<table id="__01" width="786" height="213" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td>
											<img src="images/index_ee_01.jpg" width="598" height="213" alt=""></td>
									  <td background="images/index_ee_02.jpg" width="188" height="213">
										<div id="head_ff">
										<p style="line-height:40px; font-size:12px; font-weight:bold; text-align:center; color:#000000;">ÍøÕ¾¹«¸æ</p>
										<ul>
										<marquee direction="up" height="160" width="160" scrollamount="1">
																		<%
									set rs = UICon.Query("select top 8 * from user_gg order by id desc")
									do while not rs.eof
								
								%>
									<li><a  href="gg_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" ><%=month(rs("PostTime"))%>-<%=day(rs("PostTime"))%>¡¡<%
									response.write rs("title")
									%></a></li>	
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
										</marquee>
										</ul>
										</div>
										</td>
									</tr>
								</table>