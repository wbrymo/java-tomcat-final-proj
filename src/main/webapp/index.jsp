<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    h1 {
        color: black;
        font-weight: bold;
    }
    ul {
        list-style-type: disc;
        padding-left: 20px;
    }
</style>
</head>
<body>

<h1>Calculator</h1>

<ul>
    <li>Addition</li>
    <li>Difference</li>
    <li>Product</li>
</ul>

<!-- Display calculation result if present -->
<% if (request.getAttribute("calcResult") != null) { %>
    <h2>Result: <%= request.getAttribute("calcResult") %></h2>
<% } %>

<form action="firstHomePage" method="get">
    <label>First number:</label>
    <input type="text" name="n1" value="<%= request.getAttribute("n1") != null ? request.getAttribute("n1") : "" %>" placeholder="Enter first number" />
    <br />
    <label>Second number:</label>
    <input type="text" name="n2" value="<%= request.getAttribute("n2") != null ? request.getAttribute("n2") : "" %>" placeholder="Enter second number" />
    <br /><br />
    <div>
        <label><input type="radio" name="operation" value="add" />Addition</label><br />
        <label><input type="radio" name="operation" value="sub" />Difference</label><br />
        <label><input type="radio" name="operation" value="mul" />Product</label><br />
    </div>
    <input type="submit" value="Calculate" />
</form>

</body>
</html>
