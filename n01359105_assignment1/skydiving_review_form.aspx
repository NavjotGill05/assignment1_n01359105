<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skydiving_review_form.aspx.cs" Inherits="n01359105_assignment1.skydiving_review_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skydiving Review(asp.net)</title>
    <link rel="stylesheet" type="text/css" href="Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        
            <h1>Humber Skydiving</h1>
            <h2>Review</h2>
            <section>
                <label>Your Name:</label>
                <asp:TextBox runat="server" ID="aspx_client_name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your name" ControlToValidate="aspx_client_name"></asp:RequiredFieldValidator>
            </section>
            <section>
                <label>Enter your Contact Number:</label>
                <asp:TextBox runat="server" ID="aspx_client_contact"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter you contact number" ControlToValidate="aspx_client_contact"></asp:RequiredFieldValidator>                
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a valid contact number." ControlToValidate="aspx_client_contact" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}[ ]{0,1}[0-9]{3}[ ]{0,1}[0-9]{4}" ></asp:RegularExpressionValidator>
            </section>
            <section>
                <h3>Overall Rating</h3>
                <label>How would you rate your overall experience? (Rate it from 1 to 5)</label>
                <asp:TextBox runat="server" ID="aspx_overall_rating"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please rate you overall experience" ControlToValidate="aspx_overall_rating"></asp:RequiredFieldValidator>
                <asp:RangeValidator runat="server" EnableClientScript="true" ErrorMessage="Please rate between 0 and 5." ControlToValidate="aspx_overall_rating" MinimumValue="0" MaximumValue="5"></asp:RangeValidator>
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
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please select one rating for staff service" ControlToValidate="staff_rating"></asp:RequiredFieldValidator>
                </div>
            </section>
            <section>
                <h3>Who was your Instructor?</h3>
                <asp:DropDownList runat="server" ID="client_instructor">
                    <asp:ListItem Text="--CHOOSE ONE--" Value=""></asp:ListItem>  
                    <asp:ListItem Text="John" Value="john"></asp:ListItem>
                    <asp:ListItem Text="Thomas" Value="thomas"></asp:ListItem>
                    <asp:ListItem Text="James" Value="james"></asp:ListItem>
                    <asp:ListItem Text="Twinkle" Value="twinkle"></asp:ListItem>
                    <asp:ListItem Text="Prabhdeep" Value="prabhdeep"></asp:ListItem>
                    <asp:ListItem Text="Tasmeen" Value="tasmeen"></asp:ListItem>
                    <asp:ListItem Text="Aman" Value="aman"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your Instructor Name." ControlToValidate="client_instructor"></asp:RequiredFieldValidator>
            </section>
            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </section>
            <section id="confirm_box" runat="server"></section>
            <section>
                <asp:Button runat="server" ID="submit" Text="Submit" />
            </section>
       
    </form>
</body>
</html>
