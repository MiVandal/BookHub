<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Author = Mayank Garg ---> 

<html>
<head>
    <title>Add Book</title>

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>

        body {
            margin: 0;
            padding: 0;
            font-family: "Outfit", sans-serif;
            background: #0e1017;
        }

        /* ==== FULL SCREEN LAYOUT ==== */
        .page-wrapper {
            display: flex;
            height: 100vh;
            width: 100%;
            overflow: hidden;
        }

        /* ==== LEFT DARK SHINY PANEL ==== */
        .left-panel {
            flex: 1;
            padding: 70px 60px;

            background: linear-gradient(135deg,
                #120526,
                #1a0f3b,
                #1f1c5c,
                #2a1c73,
                #3e1f87,
                #482e9e);
            background-size: 300% 300%;
            animation: leftShine 12s ease infinite;

            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;

            color: white;
            text-align: center;
        }

        @keyframes leftShine {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .left-panel h1 {
            font-size: 46px;
            font-weight: 700;
            margin-bottom: 15px;
            text-shadow: 0 6px 18px rgba(255,255,255,0.25);
        }

        .left-panel p {
            max-width: 420px;
            font-size: 18px;
            line-height: 1.6;
            opacity: 0.9;
        }


        /* ==== RIGHT DARK SHINY PANEL ==== */
        .right-panel {
            flex: 1;
            padding: 70px 60px;

            background: linear-gradient(135deg,
                #05161a,
                #062124,
                #092f36,
                #143445,
                #1d3c4e,
                #243e53);
            background-size: 300% 300%;
            animation: rightShine 10s ease infinite;

            display: flex;
            justify-content: center;
            align-items: center;
        }

        @keyframes rightShine {
            0% { background-position: 50% 0%; }
            50% { background-position: 50% 100%; }
            100% { background-position: 50% 0%; }
        }

        /* ==== FORM GLASS BOX ==== */
        .form-box {
            width: 440px;
            padding: 40px;
            border-radius: 20px;

            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(18px);

            border: 1px solid rgba(255,255,255,0.15);
            box-shadow: 0 10px 28px rgba(0,0,0,0.4),
                        0 0 25px rgba(0,195,255,0.15);
        }

        h2 {
            text-align: center;
            font-size: 28px;
            font-weight: 600;
            color: #e8ecf3;
            margin-bottom: 30px;
        }

        /* ==== LABEL ==== */
        label {
            color: #cfd4df;
            margin-bottom: 6px;
            display: block;
            font-weight: 500;
        }

        /* ==== INPUTS WITH DARK SHINE ==== */
        .form-control,
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 13px;
            margin-bottom: 22px;

            background: rgba(255,255,255,0.06);
            border: 1px solid rgba(255,255,255,0.2);
            border-radius: 10px;
            color: #e5e9f2;

            outline: none;
            transition: 0.25s ease;
        }

        .form-control:focus {
            border-color: #4ccfff;
            box-shadow: 0 0 10px rgba(76,207,255,0.4);
            background: rgba(255,255,255,0.12);
        }

        /* ==== SHINY NEON BUTTON ==== */
        input[type="submit"] {
            width: 100%;
            padding: 14px;

            border: none;
            border-radius: 12px;

            background: linear-gradient(135deg,
                #0074ff,
                #00c8ff,
                #00ffe7);
            background-size: 250% 250%;
            animation: buttonGlow 4s ease infinite;

            color: white;
            font-size: 17px;
            font-weight: 600;
            cursor: pointer;

            box-shadow: 0 8px 20px rgba(0,123,255,0.35),
                        0 0 20px rgba(0,255,190,0.2);
            transition: 0.3s ease;
        }

        @keyframes buttonGlow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        input[type="submit"]:hover {
            transform: translateY(-3px);
            box-shadow: 0 12px 28px rgba(0,200,255,0.45),
                        0 0 32px rgba(0,255,210,0.4);
        }

        a {
            color: #5ed8ff;
            text-align: center;
            display: block;
            margin-top: 18px;
            text-decoration: none;
            font-weight: 500;
        }

        a:hover { text-decoration: underline; }

        footer {
            position: absolute;
            bottom: 15px;
            width: 100%;
            text-align: center;
            font-size: 14px;
            color: #78808d;
        }

    </style>

</head>

<body>

<div class="page-wrapper">

    <!-- LEFT SHINY DARK PANEL -->
    <div class="left-panel">
        <h1>Book Manager</h1>
        <p>A beautifully designed dark-shiny interface to manage and organize your books smoothly.</p>
    </div>

    <!-- RIGHT SHINY DARK FORM PANEL -->
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
    Developed by <b>Mayank Garg</b> | © 2025 BookHub Web
</footer>

</body>
</html>

