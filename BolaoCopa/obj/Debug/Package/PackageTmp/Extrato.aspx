<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Extrato.aspx.cs" Inherits="BolaoCopa.Extrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnConteudo" runat="server">
    <div class="corpo">
<h1> Extrato de Aspostas 
    <asp:SqlDataSource ID="sqlExtrato" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bolaoCopaConnectionString %>" 
        SelectCommand="SP_GERAR_EXTRATO_APOSTAS" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="COD_APOSTADOR" SessionField="codApostador" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </h1><br />
<div class="extrato">
    <asp:GridView ID="gvExtrato" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="sqlExtrato" ForeColor="Gray" GridLines="None" 
        HorizontalAlign="Center" Width="946px" AllowPaging="True" 
        ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="rodada" HeaderText="Rodada" ReadOnly="True" 
                SortExpression="rodada" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="grupo" HeaderText="Grupo" ReadOnly="True" 
                SortExpression="grupo" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="equipe_a" HeaderText="Equipe" ReadOnly="True" 
                SortExpression="equipe_a" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="gols_a" HeaderText="Gols" ReadOnly="True" 
                SortExpression="gols_a" />
            <asp:BoundField DataField="gols_b" HeaderText="Gols" ReadOnly="True" 
                SortExpression="gols_b" />
            <asp:BoundField DataField="equipe_b" HeaderText="Equipe" ReadOnly="True" 
                SortExpression="equipe_b" >
            <HeaderStyle HorizontalAlign="Left" />
            <ItemStyle HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="pontuacao" HeaderText="Pontuação" ReadOnly="True" 
                SortExpression="pontuacao" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#8FA819" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#8FA819" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
</div>
</div>
</asp:Content>
