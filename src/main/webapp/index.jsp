<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculator</title>
</head>
<body>
<h1 style="text-align:center">Calculator</h1>

<form action="firstHomePage" method="get">
    <label>First number:</label>
    <input type="text" name="n1" />
    <br />
    <label>Second number:</label>
    <input type="text" name="n2" />
    <br />

    <div>
        <label>
            <input type="radio" name="operation" value="add" />Addition
        </label>
        <br />
        <label>
            <input type="radio" name="operation" value="sub" />Difference
        </label>
        <br />
        <label>
            <input type="radio" name="operation" value="mul" />Product
        </label>
        <br />
    </div>

    <input type="submit" value="Submit" />
</form>

</body>
</html>
