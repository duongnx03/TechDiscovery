<?php
    session_start();
    include "header.php";
    include "navbar.php";

    $result = '';
    if (isset($_SESSION["order_success"])) {
        $result = $_SESSION["order_success"];
        unset($_SESSION["order_success"]);
            echo "<script>
                    alert('$result');
                </script>";
        }
?>

    <!-------------------------------------------slider--------------------------------------------------->
    <section id="Slider">
        <div class="aspect-ratio-169">
            <img src="image/slide6.jpeg">
            <img src="image/slide1.png">
            <img src="image/slide3.jpeg">
            <img src="image/slide4.jpeg">
            <img src="image/slide5.jpeg">
        </div>

        <div class="dot-container">
            <div class="dot active"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>

    </section>

<?php
    include "footer.php";
?>