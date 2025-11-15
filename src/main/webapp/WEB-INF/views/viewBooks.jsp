<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Author = Mayank Garg ---> 

<html>
<head>
    <title>Book List</title>

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: "Outfit", sans-serif;

            background: linear-gradient(135deg,
                #0a0f14,
                #0e1822,
                #14242f,
                #1b2f3d);
            background-size: 300% 300%;
            animation: bgMove 13s ease infinite;

            color: #e6ecf3;
        }

        @keyframes bgMove {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* === MAIN CONTAINER === */
        .container {
            width: 92%;
            max-width: 1200px;
            margin: 50px auto;
            padding: 40px;

            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(14px);

            border-radius: 20px;
            border: 1px solid rgba(255,255,255,0.15);

            box-shadow:
                0 10px 28px rgba(0,0,0,0.4),
                0 0 20px rgba(0,200,255,0.18);
        }

        /* === PAGE TITLE === */
        h2 {
            text-align: center;
            font-size: 30px;
            margin-bottom: 25px;

            color: #aee4ff;
            text-shadow: 0 0 12px rgba(0,180,255,0.5);
            letter-spacing: 1px;
        }

        /* === ADD BUTTON === */
        .add-btn {
            display: inline-block;
            padding: 12px 22px;
            border-radius: 12px;

            background: linear-gradient(135deg, #0099ff, #00eaff);
            background-size: 230% 230%;
            animation: btnGlow 5s ease infinite;

            color: white;
            font-weight: 600;
            text-decoration: none;

            box-shadow: 0 6px 18px rgba(0,200,255,0.35);
            transition: 0.25s ease;
        }

        @keyframes btnGlow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .add-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 28px rgba(0,200,255,0.45);
        }

        /* === TABLE === */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;

            background: rgba(255,255,255,0.06);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            overflow: hidden;
        }

        th {
            padding: 14px;
            background: rgba(255,255,255,0.14);
            color: #d7eeff;

            font-size: 16px;
            letter-spacing: .7px;
            text-shadow: 0 0 10px rgba(0,170,255,0.4);
        }

        td {
            padding: 12px 14px;
            color: #e7f3ff;
            border-bottom: 1px solid rgba(255,255,255,0.08);
        }

        tr:nth-child(even) {
            background: rgba(255,255,255,0.04);
        }

        tr:hover {
            background: rgba(0,200,255,0.12);
            transition: 0.25s ease;
        }

        /* === FOOTER === */
        footer {
            text-align: center;
            margin: 20px;
            color: #8aa9c5;
            font-size: 14px;
        }

    </style>
</head>

<body>

    <div class="container">

        <h2>Available Books</h2>

        <a href="${pageContext.request.contextPath}/books/add" class="add-btn">
            + Add New Book
        </a>

        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price (₹)</th>
            </tr>

            <c:forEach var="b" items="${books}">
                <tr>
                    <td>${b.bookId}</td>
                    <td>${b.title}</td>
                    <td>${b.author}</td>
                    <td>${b.price}</td>
                </tr>
            </c:forEach>
        </table>

    </div>

    <footer>
        Developed by <b>Mayank Garg</b> | © 2025 BookHub Web
    </footer>

</body>
</html>

