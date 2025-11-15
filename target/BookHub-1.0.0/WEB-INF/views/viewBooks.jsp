<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Author = Manthan Rathor --->

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
                #0f172a,
                #1e293b,
                #334155,
                #0f172a);
            background-size: 300% 300%;
            animation: gradientFlow 12s ease infinite;

            color: #e2e8f0;
        }

        @keyframes gradientFlow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* MAIN CONTAINER */
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 40px auto;
            padding: 35px;

            background: rgba(255,255,255,0.07);
            backdrop-filter: blur(15px);

            border-radius: 20px;
            border: 1px solid rgba(255,255,255,0.14);

            box-shadow:
                0 8px 28px rgba(0,0,0,0.45),
                0 0 20px rgba(100,170,255,0.20);
        }

        /* PAGE TITLE */
        h2 {
            text-align: center;
            font-size: 32px;
            margin-bottom: 25px;

            color: #a5d8ff;
            text-shadow: 0 0 14px rgba(0,190,255,0.35);
        }

        /* ADD BOOK BUTTON */
        .add-btn {
            display: inline-block;
            padding: 12px 22px;
            border-radius: 12px;

            background: linear-gradient(135deg, #3b82f6, #60a5fa);
            background-size: 230% 230%;
            animation: buttonAnim 5s ease infinite;

            color: white;
            font-weight: 600;
            text-decoration: none;

            box-shadow: 0 6px 18px rgba(0,120,255,0.35);
            transition: 0.25s ease;
        }

        @keyframes buttonAnim {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .add-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 26px rgba(0,150,255,0.45);
        }

        /* TABLE */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;

            background: rgba(255,255,255,0.06);
            backdrop-filter: blur(12px);

            border-radius: 14px;
            overflow: hidden;
        }

        th {
            padding: 14px;
            background: rgba(255,255,255,0.14);
            color: #dceeff;

            font-size: 16px;
            letter-spacing: .7px;
            text-shadow: 0 0 10px rgba(0,150,255,0.35);
        }

        td {
            padding: 12px 14px;
            color: #e7f5ff;
            border-bottom: 1px solid rgba(255,255,255,0.06);
        }

        tr:nth-child(even) {
            background: rgba(255,255,255,0.04);
        }

        tr:hover {
            background: rgba(100,180,255,0.18);
            transition: 0.25s ease;
        }

        /* FOOTER */
        footer {
            text-align: center;
            margin: 25px;
            color: #8ba4c7;
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
        Developed by <b>Manthan Rathor</b> | © 2025 BookHub Web
    </footer>

</body>
</html>
