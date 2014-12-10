<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestDelete.aspx.cs" Inherits="Riservata_TestDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>elimena file</p>
                    <asp:ListView ID="lista" runat="server">
                        <LayoutTemplate>
                            <table id="tbl1" runat="server">
                                <tr runat="server" id="itemPlaceholder">

                                </tr>
                            </table>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr runat="server" >
                                <td>
                                <asp:Label ID="LabelDeleteFile" runat="server" Text="Label"></asp:Label><a href="#nogo">
                                    <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' /></a>
                                </td>
                                </tr>
                        </ItemTemplate>

                    </asp:ListView>
    </div>
        <div>
                            <asp:Button ID="ButtonDeleteFile" runat="server" Text="Button" OnClick="ButtonDeleteFile_Click" />
                                     <asp:Label ID="LabelDelete" Text="" runat="server" ></asp:Label>
       </div>
    </form>
</body>
</html>
