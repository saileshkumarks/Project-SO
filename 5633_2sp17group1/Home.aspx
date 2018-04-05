<%@ Page Title="" Language="C#" MasterPageFile="~/siteMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="contentHomeHead" ContentPlaceHolderID="MainHead" Runat="Server">
    <title runat="server">UltraBus - Home</title>
</asp:Content>
<asp:Content ID="contentHomeBody" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

    <h3>SEATS AVAILABILITY STATUS</h3>
    <%--<p>
        Journey for: 
        <asp:RadioButtonList ID="listJourneyFor" runat="server">
            <asp:ListItem Text="One-way" Value="1" />
            <asp:ListItem Text="Round-Trip" Value="2" />
        </asp:RadioButtonList>
    </p>--%>

    <%--<p>Book as: 
        <asp:RadioButtonList ID="listJourneyType" runat="server">
            <asp:ListItem Text="Reserved" Value="3" />
            <asp:ListItem Text="Unreserved" Value="4" />
        </asp:RadioButtonList>
    </p>    --%>
       
            From: <asp:DropDownList ID="ddlLocationFrom" runat="server" DataSourceID="dSourceUltraBus" DataTextField="LOCATION_NAME" DataValueField="LOCATION_NAME"></asp:DropDownList>
            To: <asp:DropDownList ID="ddlLocationTo" runat="server" DataSourceID="dSourceUltraBus" DataTextField="LOCATION_NAME" DataValueField="LOCATION_NAME"></asp:DropDownList>            
            Select Time: <asp:DropDownList ID="ddlTime" runat="server" DataSourceID="dSourceTime" DataTextField="TIME" DataValueField="TIME" ></asp:DropDownList> 

    <p>
        <asp:Label ID="lblStartDate" runat="server" Text="Start Date: " />
        <asp:TextBox ID="txtDateFrom" runat="server"></asp:TextBox>
        <asp:ImageButton ID="imgFromDatePicker" runat="server" ImageUrl="~/images/calendar.png" Height="30" Width="30" OnClick="imgFromDatePicker_Click" />
        <asp:Calendar ID="calDatePickerFrom" runat="server" BackColor="White" BorderColor="#3366CC" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="calDatePickerFrom_SelectionChanged" Width="220px" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest">
            <DayHeaderStyle ForeColor="#336666" Height="1px" BackColor="#99CCCC" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>

        <asp:SqlDataSource ID="dSourceUltraBus" runat="server" ConnectionString="<%$ ConnectionStrings:projectUltraBusDB %>" SelectCommand="SELECT [LOCATION_NAME] FROM [LOCATION] ORDER BY [LOCATION_NAME]"></asp:SqlDataSource>

        <%--<asp:Label ID="lblEndDate" runat="server" Text="Return Date: " />
        <asp:TextBox ID="txtDateTo" runat="server" Text="Return Date"></asp:TextBox>
        <asp:ImageButton ID="imgToDatePicker" runat="server" ImageUrl="~/images/calendar.png" Height="30px" Width="30px" OnClick="imgToDatePicker_Click" />
        <asp:Calendar ID="calDatePickerTo" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="calDatePickerTo_SelectionChanged" Width="330px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>--%>
    </p>
    <asp:Button ID="btnSubmitSeatsAvailability" runat="server" Text="Submit" OnClick="btnLookupSeatAvailability_Click" />

    <asp:Label ID="lblSampleOutput" runat="server" />

    <asp:GridView ID="gridViewSeatsAvailability" runat="server" DataSourceID="dSourceSeatsAvailable" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" PageSize="5" BorderStyle="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="DATE" HeaderText="DEPARTURE DATE" SortExpression="DATE" />
            <asp:BoundField DataField="TIME" HeaderText="DEPARTURE  TIME" SortExpression="TIME" />
            <asp:BoundField DataField="LOCATION_FROM" HeaderText="DEPARTURE  LOCATION" SortExpression="LOCATION_FROM" />
            <asp:BoundField DataField="LOCATION_TO" HeaderText="DESTINATION" SortExpression="LOCATION_TO" />
            <asp:BoundField DataField="AVAILABILTIY" HeaderText="# OF SEATS AVAILABLE" SortExpression="AVAILABILTIY" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="dSourceTime" runat="server" ConnectionString="<%$ ConnectionStrings:projectUltraBusDB %>" SelectCommand="SELECT [TIME] FROM [BUS_TIMINGS] ORDER BY [ID]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dSourceSeatsAvailable" runat="server" ConnectionString="<%$ ConnectionStrings:projectUltraBusDB %>" SelectCommand="SELECT [DATE], [TIME], [LOCATION_FROM], [LOCATION_TO], [AVAILABILTIY] FROM [RESERVATION_AVAILABILITY] WHERE (([DATE] = @DATE) AND ([TIME] = @TIME) AND ([LOCATION_FROM] = @LOCATION_FROM) AND ([LOCATION_TO] = @LOCATION_TO))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtDateFrom" Name="DATE" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ddlTime" Name="TIME" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlLocationFrom" Name="LOCATION_FROM" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlLocationTo" Name="LOCATION_TO" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <%--<asp:Button ID="btnAddToCart" Text="Add Ticket to Cart" runat="server" OnClick="btnAddToCart_Click" />--%>
    <asp:Button ID="btnSubmitReserveTicket" Text="Reserve TIcket" runat="server" OnClick="btnSubmitReserveTicket_Click" />

</asp:Content>

