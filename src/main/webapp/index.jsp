<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
    h1.title {
        font-family: "Times New Roman", Times, serif;
        font-weight: bold;
        color: black;
    }
</style>
</head>
<body>

<!-- Display title -->
<h1 class="title">Calculator</h1>

<!-- Display calculation result if present -->
<% if (request.getAttribute("calcResult") != null) { %>
    <h2>Result: <%= request.getAttribute("calcResult") %></h2>
<% } %>

<!-- Display input fields and operations list -->
<form action="firstHomePage" method="get">
    <label>First number:</label>
    <input type="text" name="n1" value="<%= request.getAttribute("n1") != null ? request.getAttribute("n1") : "" %>" />
    <br />

    <label>Second number:</label>
    <input type="text" name="n2" value="<%= request.getAttribute("n2") != null ? request.getAttribute("n2") : "" %>" />
    <br />

    <p>Select operation:</p>
    <ul>
        <li><label><input type="radio" name="operation" value="add" /> Addition</label></li>
        <li><label><input type="radio" name="operation" value="sub" /> Difference</label></li>
        <li><label><input type="radio" name="operation" value="mul" /> Product</label></li>
    </ul>

    <input type="submit" value="Calculate" />
</form>

</body>
</html>
