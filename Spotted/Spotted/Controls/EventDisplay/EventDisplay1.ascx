<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EventDisplay1.ascx.cs" Inherits="Spotted.Controls.EventDisplay.EventDisplay1" %>
<%@ Import Namespace="Bobs" %>
<div runat="server" id="MainDiv" style="margin-bottom:13px;" class="CleanLinks">
	<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td runat="server" id="ImageCell" style="padding-right:3px;padding-top:2px;" valign="top">
				<a href="<%=Url%>"><img src="<%=CurrentEvent.AnyPicPath%>" align="right" border="0" class="BorderBlack All" width="50" height="50"></a>
			</td>
			<td valign="top" width="100%">
				<div>
					<%=TicketsIconHtml%><%=FreeGuestlistIconHtml%>
					<%=CurrentEvent.IsTicketsAvailable || (CurrentEvent.SpotterRequest.HasValue && CurrentEvent.SpotterRequest.Value) ? "<div style=\"padding-top:3px;\">" : ""%>
						<%=CurrentEvent.TitleNoteHtml%><b><a href="<%=Url%>"><%=CurrentEvent.Name%></a></b><small><%=Links%><asp:PlaceHolder Runat=server ID=DatePh EnableViewState=False/></small>
					<%=CurrentEvent.IsTicketsAvailable || (CurrentEvent.SpotterRequest.HasValue && CurrentEvent.SpotterRequest.Value) ? "</div>" : ""%>
					<div style="margin-top:5px; margin-bottom:4px;">
						<%=EventText%>
					</div>
					<%=MusicTypeText%>
				</div>
			</td>
		</tr>
	</table>
</div>
