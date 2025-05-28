<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>

<!-- Show only the result if present -->
<c:if test="${not empty calcResult}">
    <h1>${calcResult}</h1>
</c:if>

<form action="firstHomePage" method="get">
    <input type="text" name="n1" value="${n1}" placeholder="First number" />
    <input type="text" name="n2" value="${n2}" placeholder="Second number" />
    <div>
        <label><input type="radio" name="operation" value="add" />Addition</label>
        <label><input type="radio" name="operation" value="sub" />Difference</label>
        <label><input type="radio" name="operation" value="mul" />Product</label>
    </div>
    <input type="submit" value="Calculate" />
</form>

</body>
</html>
