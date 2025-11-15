<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Author = Manthan Rathor --->

<html>
<head>
    <title>Add Book</title>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: "Outfit", sans-serif;
            background: #0d1117;
        }

        .page-wrapper {
            display: flex;
            height: 100vh;
            width: 100%;
            overflow: hidden;
        }

        /* LEFT PANEL */
        .left-panel {
            flex: 1;
            padding: 60px 50px;
            background: radial-gradient(circle at top left, #3b0764, #1e1b4b, #0f172a);
            color: white;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            box-shadow: inset 0 0 60px rgba(255,255,255,0.08);
        }

        .left-panel h1 {
            font-size: 42px;
            font-weight: 700;
            margin-bottom: 10px;
        }

        .left-panel p {
            max-width: 400px;
            font-size: 17px;
            opacity: 0.9;
        }

        /* RIGHT PANEL */
        .right-panel {
            flex: 1;
            padding: 60px 50px;
            background: linear-gradient(120deg, #0f172a, #1e293b, #334155);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* GLASS CARD */
        .form-box {
            width: 430px;
            padding: 35px;
            border-radius: 18px;
            background: rgba(255, 255, 255, 0.07);
            border: 1px solid rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(14px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.4);
        }

        h2 {
            text-align: center;
            font-size: 26px;
            color: #e2e8f0;
            margin-bottom: 25px;
        }

        label {
            color: #cbd5e1;
            font-weight: 500;
            margin-bottom: 6px;
            display: block;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.15);
            color: #e2e8f0;
            border-radius: 8px;
            margin-bottom: 18px;
            outline: none;
            transition: 0.25s ease;
        }

        .form-control:focus {
            border-color: #60a5fa;
            box-shadow: 0 0 10px rgba(96,165,250,0.4);
        }

        /* BUTTON */
        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background: #3b82f6;
            border: none;
            border-radius: 10px;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            background: #2563eb;
        }

        a {
            color: #93c5fd;
            text-align: center;
            display: block;
            margin-top: 15px;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        footer {
            position: absolute;
            bottom: 15px;
            width: 100%;
            text-align: center;
            font-size: 14px;
            color: #64748b;
        }

    </style>
</head>

<body>

<div class="page-wrapper">

    <div class="left-panel">
        <h1>Book Manager</h1>
        <p>A beautifully designed dark-shiny interface to manage and organize your books smoothly.</p>
    </div>

    <div class="right-panel">
        <div class="form-box">

            <h2>Add New Book</h2>

            <form:form modelAttribute="book" method="post" action="${pageContext.request.contextPath}/books/add">

                <label for="title">Title</label>
                <form:input path="title" id="title" cssClass="form-control" />

                <label for="author">Author</label>
                <form:input path="author" id="author" cssClass="form-control" />

                <label for="price">Price</label>
                <form:input path="price" id="price" cssClass="form-control" />

                <input type="submit" value="Save" />
            </form:form>

            <a href="${pageContext.request.contextPath}/books/list">View All Books</a>

        </div>
    </div>

</div>

<footer>
    Developed by <b>Manthan Rathor</b> | © 2025 BookHub Web
</footer>

</body>
</html>
