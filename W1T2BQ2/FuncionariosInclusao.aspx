<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="FuncionariosInclusao.aspx.cs" Inherits="W1T2BQ2.FuncionariosInclusao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">
        <h2>Inclusao de Funcionario</h2>
    </div>

    <div class="row" style="margin-top: 15px">
        <div class="col-md-12">
            <label>Nome:</label>
            <asp:TextBox ID="txtNome" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="col-md-5">
        <label>Sexo:</label>
        <asp:TextBox ID="txtSexo" runat="server" MaxLength="1" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-md-5">
        <label>Data Nasc.:</label>
        <asp:TextBox ID="txtDataNasc" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-md-5">
        <label>Num.Cart.Trabalho:</label>
        <asp:TextBox ID="txtCarteira" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-md-5">
        <label>Tel.Fixo:</label>
        <asp:TextBox ID="txtFixo" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-md-5">
        <label>Celular:</label>
        <asp:TextBox ID="txtCelular" runat="server" MaxLength="15" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-md-7">
        <label>E-mail:</label>
        <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-md-2">
        <label>Endereço.:</label>
        <asp:TextBox ID="txtEndereco" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
    </div>

    <div class="col-md-2">
        <label>Bairro.:</label>
        <asp:TextBox ID="txtBairro" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
    </div>
    
    <div class="col-md-2">
        <label>Cidade.:</label>
        <asp:TextBox ID="txtCidade" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
    </div>


    <div class="col-md-2">
        <label>UF.:</label>
        <asp:TextBox ID="txtUF" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
    </div>


    <div class="row" style="margin-top: 15px">
        <div class="col-md-12 text-right">
            <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
        </div>
    </div>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" CssClass="text text-danger" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
