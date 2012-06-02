<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Ranking.aspx.cs" Inherits="BolaoCopa.Ranking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnConteudo" runat="server">
    <div class="corpo">
<h1> Ranking </h1><br />
<div class="ranking">
        <asp:SqlDataSource ID="sqlRanking" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bolaoCopaConnectionString %>" SelectCommand="     SELECT apostador, placares, vencedores, gols, pontuacao  
       FROM v_ranking (NOLOCK)
ORDER BY pontuacao, placares, vencedores, gols
  "></asp:SqlDataSource>
        <asp:GridView ID="gvRanking" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqlRanking" 
            HorizontalAlign="Center" Width="908px" ForeColor="Gray" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="apostador" HeaderText="Usuário" ReadOnly="True" 
                    SortExpression="apostador" >
                <HeaderStyle HorizontalAlign="Left" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="placares" HeaderText="Qtde. Placares Exatos" 
                    ReadOnly="True" SortExpression="placares" />
                <asp:BoundField DataField="vencedores" HeaderText="Qtde. Vencedores" 
                    ReadOnly="True" SortExpression="vencedores" />
                <asp:BoundField DataField="gols" HeaderText="Qtde. Gols de Vencedores" 
                    ReadOnly="True" SortExpression="gols" />
                <asp:BoundField DataField="pontuacao" HeaderText="Pontuação Geral" 
                    ReadOnly="True" SortExpression="pontuacao" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Names="Segoe UI" ForeColor="White" 
                Font-Bold="True" />
            <HeaderStyle BackColor="#8FA819" Font-Bold="True" Font-Names="Segoe UI" 
                ForeColor="White" />
            <PagerStyle BackColor="#8FA819" Font-Names="Segoe UI" ForeColor="White" 
                HorizontalAlign="Center" />
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
