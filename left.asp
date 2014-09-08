				<table id="__01" width="205" height="451" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td>
										<img src="images/index_aa_01.jpg" width="205" height="31" alt=""></td>
								</tr>
								<tr>
									<td>
										<img src="images/index_aa_02.jpg" width="205" height="31" alt=""></td>
								</tr>
								<tr>
									<td width="205" height="180">
									<ul id="left_zyyw">
								<%
									set rs = UICon.Query("select top 5 * from user_zyyw order by indexid")
									do while not rs.eof
								
								%>
									<li>　　<a  href="zyyw_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>" ><%=rs("title")%></a></li>
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
									</ul>
									</td>
								</tr>
								<tr>
									<td>
										<img src="images/index_aa_04.jpg" width="205" height="24" alt=""></td>
								</tr>
								<tr>
									<td width="205" height="185">
									<div id="left_lxwm">
									<p><strong>电话: </strong>025-66078966</p>
									<p><strong>传真：</strong>025-52425308</p>
									<p><strong>地址：</strong>南京市江宁区天元东路59号</p>
									</div>
									</td>
								</tr>
							</table>