<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="SearchForStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">Search For Movies Record</span></h4>
        <asp:Label ID="lblResultMessage" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtMovieTag" CssClass="col-md-3 control-label">Enter a movie tag:</asp:Label>
            <div class="col-md-2">
                <asp:TextBox ID="txtMovieTag" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                <%--<asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter a valid student id." ControlToValidate="txtStudentId" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ErrorMessage="Please enter exactly 8 digits."
                    ControlToValidate="txtStudentId" CssClass="text-danger" Display="Dynamic" ValidationExpression="^\d{8}$"></asp:RegularExpressionValidator>--%>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnFindMovies" runat="server" OnClick="btnFindMovies_Click" Text="Find Movies with tag" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="pnlStudentRecord" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="gvStudentRecord" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
    <hr />
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">Search For Account with year range</span></h4>
        <asp:Label ID="resultLable2" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtStartYear" CssClass="col-md-3 control-label">Enter a start year and end year (format: 01/JAN/2022):</asp:Label>
            <div class="col-md-2">
                Start year: <asp:TextBox ID="txtStartYear" runat="server" CssClass="form-control input-sm"></asp:TextBox>
            </div>
            <div class="col-md-2">
                End year:<asp:TextBox ID="txtEndYear" runat="server" CssClass="form-control input-sm"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnFindAccByTime" runat="server" OnClick="btnFindAccByTime_Click" Text="Find accounts by time" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="resultPanel2" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="GridView2" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>

    <hr />
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">Find the movie with selected cast member that has been watch the most times</span></h4>
        <asp:Label ID="resultLable3" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCastMember" CssClass="col-md-3 control-label">Enter the name of a cast member:</asp:Label>
            <div class="col-md-2">
                <asp:TextBox ID="txtCastMember" runat="server" CssClass="form-control input-sm"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnFindMovie" runat="server" OnClick="btnFindMovie_Click" Text="Find the movie" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="resultPanel3" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="GridView3" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
    <hr />
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">Find all accounts where the owner is older than an input age</span></h4>
        <asp:Label ID="resultLable4" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtFindAccByAge" CssClass="col-md-3 control-label">Enter the age:</asp:Label>
            <div class="col-md-2">
                <asp:TextBox ID="txtFindAccByAge" runat="server" CssClass="form-control input-sm"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnFindAccByAge" runat="server" OnClick="btnFindAccByAge_Click" Text="Find the accounts" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="resultPanel4" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="GridView4" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
    <hr />
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">Find all playlists that do not contain a product that aired after an input year</span></h4>
        <asp:Label ID="resultLable5" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtFindPlaylist" CssClass="col-md-3 control-label">Enter the year:</asp:Label>
            <div class="col-md-2">
                <asp:TextBox ID="txtFindPlaylist" runat="server" CssClass="form-control input-sm"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnFindPlaylist" runat="server" OnClick="btnFindPlaylist_Click" Text="Find the playlist" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="resultPanel5" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="GridView5" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
    <hr />
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">Create new user</span></h4>
        <asp:Label ID="resultLable6" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCreateUserUsername" CssClass="col-md-3 control-label">Enter the user's attributes:</asp:Label>
            <div class="col-md-2">
                username: <asp:TextBox ID="txtCreateUserUsername" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                name: <asp:TextBox ID="txtCreateUserName" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                birthdate(format: 01/JAN/2022): <asp:TextBox ID="txtCreateUserBirth" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                premium(y/n): <asp:TextBox ID="txtCreateUserPremium" runat="server" CssClass="form-control input-sm"></asp:TextBox>          
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnCreateUser" runat="server" OnClick="btnCreateUser_Click" Text="Create new user" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="resultPanel6" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="GridView6" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
    <hr />
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">delete user.</span></h4>
        <asp:Label ID="resultLable7" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDeleteUser" CssClass="col-md-3 control-label">Enter the username:</asp:Label>
            <div class="col-md-2">
                <asp:TextBox ID="txtDeleteUser" runat="server" CssClass="form-control input-sm"></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnDeleteUser" runat="server" OnClick="btnDeleteUser_Click" Text="Delete user" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="resultPanel7" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="GridView7" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
    <hr />
    <div class="form-horizontal">
        <h4 class="col-md-offset-1"><span style="text-decoration: underline; color: #990000">show all users</span></h4>
        <asp:Label ID="resultLable8" runat="server" Font-Bold="True" CssClass="label col-md-offset-1"></asp:Label>

        <div class="form-group">
            <div class="col-md-2">
                <asp:Button ID="btnShowUsers" runat="server" OnClick="btnShowUsers_Click" Text="Show all users" CssClass="btn-sm" />
            </div>
        </div>
        <asp:Panel ID="resultPanel8" runat="server" Visible="False">
            <hr />
            <div class="form-group">
                <div class="col-md-offset-1 col-md-10">
                    <asp:GridView ID="GridView8" runat="server" BorderWidth="2px" CssClass="table-condensed" BorderStyle="Solid" Caption="<b>Search Result</b>" CaptionAlign="Top" CellPadding="3" HorizontalAlign="Justify"></asp:GridView>
                </div>
            </div>
        </asp:Panel>
    </div>
    <hr />
</asp:Content>