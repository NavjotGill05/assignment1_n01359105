<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skydiving_review_form.aspx.cs" Inherits="n01359105_assignment1.skydiving_review_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skydiving Review(asp.net)</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Humber Skydiving</h1>
            <h2>Review</h2>
            <section>
                <label>Your Name:</label>
                <asp:TextBox runat="server" ID="aspx_client_name"></asp:TextBox>
            </section>
            <section>
                <h3>Overall Rating</h3>
                <div>
                    <asp:RadioButtonList runat="server" ID="overall_rating">
                        <asp:ListItem Text="Poor" Value="poor"></asp:ListItem>
                        <asp:ListItem Text="Average" Value="average"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="good"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="verygood"></asp:ListItem>
                        <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </section>
            <section>
                <h3>How would you rate staff service?</h3>
                <div>
                    <asp:RadioButtonList runat="server" ID="staff_rating">
                        <asp:ListItem Text="Poor" Value="poor"></asp:ListItem>
                        <asp:ListItem Text="Average" Value="average"></asp:ListItem>
                        <asp:ListItem Text="Good" Value="good"></asp:ListItem>
                        <asp:ListItem Text="Very Good" Value="verygood"></asp:ListItem>
                        <asp:ListItem Text="Excellent" Value="excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </section>
            <section>
                <h3>What sort of visit was it?</h3>
                    <asp:CheckBoxList runat="server" ID="visit_type">
                        <asp:ListItem Text="Family" Value="family"></asp:ListItem>
                        <asp:ListItem Text="Friends" Value="friends"></asp:ListItem>
                        <asp:ListItem Text="Business" Value="business"></asp:ListItem>
                        <asp:ListItem Text="Couple" Value="couple"></asp:ListItem>
                        <asp:ListItem Text="Solo" Value="solo"></asp:ListItem>
                    </asp:CheckBoxList>
            </section>
            <section>
                <h3>Which phase you enjoyed the most?</h3>
                    <asp:CheckBoxList runat="server" ID="enjoyed_phase">
                        <asp:ListItem Text="Freefall" Value="freefall"></asp:ListItem>
                        <asp:ListItem Text="Parchute Opening" Value="parachute opening"></asp:ListItem>
                        <asp:ListItem Text="Landing" Value="landing"></asp:ListItem>
                    </asp:CheckBoxList>
            </section>
            <section>
                <h3>Who was your Instructor?</h3>
                <asp:DropDownList runat="server" ID="clients_instructor">
                    <asp:ListItem Text="John" Value="john"></asp:ListItem>
                    <asp:ListItem Text="Thomas" Value="thomas"></asp:ListItem>
                    <asp:ListItem Text="James" Value="james"></asp:ListItem>
                    <asp:ListItem Text="Twinkle" Value="twinkle"></asp:ListItem>
                    <asp:ListItem Text="Prabhdeep" Value="prabhdeep"></asp:ListItem>
                    <asp:ListItem Text="Tasmeen" Value="tasmeen"></asp:ListItem>
                    <asp:ListItem Text="Aman" Value="aman"></asp:ListItem>
                </asp:DropDownList>
            </section>
            <section>
                <asp:Button runat="server" ID="submit" Text="Submit"/>
            </section>
        </div>
    </form>
</body>
</html>
