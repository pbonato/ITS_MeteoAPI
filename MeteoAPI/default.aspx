<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MeteoAPI._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Weather Site</title>
    <!-- CSS -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <!-- SCRIPTS -->
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-9 bg-warning mt-3">
                    <div class="h3 mt-3 mb-3">Città:<asp:TextBox CssClass="ml-3" ID="txtCitta" runat="server"></asp:TextBox></div>
                </div>
                <div class="col bg-warning mt-3">
                    <asp:Button CssClass="btn btn-primary mt-3" ID="btnSearch" runat="server" Text="RICERCA" />
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <table class="table table-striped table-bordered mt-3">
                        <tr class="text-center">
                            <td class="h2" colspan="2">Risultati</td>
                        </tr>
                        <tr>
                            <td>Latitudine</td>
                            <td>
                                <asp:Label ID="lblLatitudine" runat="server" Text="..."></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Longitudine</td>
                            <td>
                                <asp:Label ID="lblLongitudine" runat="server" Text="..."></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Temp. Minima</td>
                            <td>
                                <asp:Label ID="lblTempMinima" runat="server" Text="..."></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Temp. Massima</td>
                            <td>
                                <asp:Label ID="lblTempMassima" runat="server" Text="..."></asp:Label></td>
                        </tr>
                        <tr>
                            <td>Temp. Attuale</td>
                            <td>
                                <asp:Label ID="lbltemperatura" runat="server" Text="..."></asp:Label></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="container mt-3">
            <div class="row">
                <div class="col">
                    <asp:Label ID="lblStatus" runat="server" Text="---"></asp:Label>
                </div>
                <div class="col">
                    <img alt="WeatherCondition" src="..." />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
