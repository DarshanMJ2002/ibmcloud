<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rich Cuisine</title>
    <style>
        *{{}    margin: 0;
    padding: 0;
}

body{
    background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmSwvrUAVAIYTbceBkQDuY7S00gg09W9aAOQ&s");
    background-size: cover;
    background-blend-mode: darken;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.container{
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.container h1{
    color: orangered;
    margin-left: 10px;
    cursor: pointer;
}

.navbar ul li{
    display: inline-block;
    padding: 18px;
    text-transform: uppercase;
}

.navbar ul li a{
    text-decoration: none;
    color: #fff;
    padding: 4px;
    transition: 3.5s;
}

.navbar ul li a:hover{
    box-shadow: 0 3px 50px orangered inset,0 3px 50px orangered inset,
    0 3px 50px orangered inset,0 3px 50px orangered inset;
}

.navbar .reservation{
    padding: 8px;
    background-color: orangered;
}

.content{
    position: absolute;
    color: #fff;
    top: 40%;
    left: 30%;
}

.content h3{
    font-family: sans-serif;
    font-size: 20px;
    margin-left: 30%;
}

.content h1{
    font-size: 50px;
}

.content p{
    text-align: center;
    margin-top: 17px;
}

.search{
    position: absolute;
    margin-top: 25%;
    margin-left: 42%;
}

.search input{
    outline: none;
    border: none;
    padding: 12px 40px;
    size: 1em;
    width: 100%;
}

.submit{
    position: absolute;
    margin-top: 29%;
    margin-left: 49%;
}

.submit a{
    text-decoration: none;
    color: #fff;
    padding: 12px 25px;
    background-color: orangered;
}
    </style>
</head>
<body>
    <div class="container">
        <h1>Rich Cuisine</h1>
        <div class="navbar">
            <ul>
                <li><a href="#">HOME</a></li>
                <li><a href="#">ABOUT</a></li>
                <li><a href="#">MENU</a></li>
                <li><a href="#">GALLERY</a></li>
                <li><a href="#">TEAM</a></li>
                <li><a href="#">CONTACT</a></li>
                <li><a class="reservation" href="#">RESERVATION</a></li>
            </ul>
        </div>
    </div>
    <div class="content">
        <h3>Welcome to rich cuisine</h3>
        <h1>Rich Healthy and Natural Food</h1>
        <p>Rich Cuisine is a restaurant located in india.we have some amazing recipes
            and the most talented chefs in the country.</p>
    </div>
    <div class="search">
        <input type="text" placeholder="Search Food">
    </div>

    <div class="submit">
        <a href="#">Submit</a>
    </div>
</body>
</html>
