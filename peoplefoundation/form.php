<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donation form</title>
</head>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }
    
    * {
        box-sizing: border-box;
    }
    /* Button used to open the contact form - fixed at the bottom of the page */
    
    .open-button {
        background-color: #555;
        color: white;
        padding: 16px 20px;
        border: none;
        cursor: pointer;
        opacity: 0.8;
        position: fixed;
        bottom: 23px;
        right: 28px;
        width: 280px;
    }
    /* The popup form - hidden by default */
    
    .form-popup {
        display: none;
        position: fixed;
        bottom: 0;
        right: 450px;
        border: 3px solid #f1f1f1;
        z-index: 9;
    }
    /* Add styles to the form container */
    
    .form-container {
        max-width: 300px;
        padding: 10px;
        background-color: white;
    }
    /* Full-width input fields */
    
    .form-container input[type=text] {
        width: 100%;
        height: 10px;
        padding: 15px;
        margin: 5px 0 22px 0;
        border: none;
        background: #f1f1f1;
    }
    /* When the inputs get focus, do something */
    
    .form-container input[type=text]:focus {
        background-color: #ddd;
        outline: none;
    }
    /* Set a style for the submit/login button */
    
    .form-container .btn {
        background-color: #04AA6D;
        color: white;
        padding: 2px 5px;
        border: none;
        cursor: pointer;
        width: 100px;
        margin-bottom: 10px;
        opacity: 0.8;
    }
    /* Add a red background color to the cancel button */
    
    .form-container .cancel,
    .proceed {
        background-color: red;
    }
    /* Add some hover effects to buttons */
    
    .form-container .btn:hover,
    .open-button:hover {
        opacity: 1;
    }
    
    .gateway {
        position: relative;
        top: -5px;
    }
    
    .media {
        position: relative;
        left: 15px;
    }
    
    button {
        position: relative;
        top: 10px;
        left: 30px;
    }
</style>

<body>
    <div class="form-popup" id="myForm">
        <form action="/action_page.php" class="form-container">
            <div class="Ename">
                <label>Event Name: </label>
                <!--input type="text"-->
                <select name="Event">
                    <option></option>
                    <option>Free meal for street people</option>
                    <option>Hospital for unpriviledged people</option>
                </select>
            </div>
            <div class="username">
                <label>Username: </label>
                <input type="text">
            </div>
            <div class="contact">
                <label>Contact: </label>
                <input type="text">
            </div>
            <div class="gateway">
                <label>Select: </label>
                <select name="media" class="media">
                    <option></option>
                    <option>BKash</option>
                    <option>Rocket</option>
                    <option>Upay</option>
                    <option>Nagad</option>
                </select>
            </div>
            <div class="money">
                <label>Amount: </label>
                <input type="number">
            </div>
            <button class="btn proceed">Proceed</button>
            <button type="button" class="btn cancel" onclick="closeForm()">X</button>
        </form>
    </div>

    <script>
        function openForm() {
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
    </script>