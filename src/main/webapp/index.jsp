<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>

<!-- Display calculation result if present -->
<% if (request.getAttribute("calcResult") != null) { %>
    <h1><%= request.getAttribute("calcResult") %></h1>
<% } %>

<form action="firstHomePage" method="get">
    <input type="text" name="n1" value="<%= request.getAttribute("n1") != null ? request.getAttribute("n1") : "" %>" placeholder="First number" />
    <input type="text" name="n2" value="<%= request.getAttribute("n2") != null ? request.getAttribute("n2") : "" %>" placeholder="Second number" />
    <div>
        <label><input type="radio" name="operation" value="add" />Addition</label>
        <label><input type="radio" name="operation" value="sub" />Difference</label>
        <label><input type="radio" name="operation" value="mul" />Product</label>
    </div>
    <input type="submit" value="Calculate" />
</form>

</body>
</html>
