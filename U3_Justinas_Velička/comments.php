<?php

$connect = mysqli_connect("localhost", "root", "", "egzaminas");

$first_course = "SELECT COUNT(kurso_id) as komentarai FROM kurso_komentarai WHERE kurso_id = 1";
$second_course = "SELECT COUNT(kurso_id) as komentarai FROM kurso_komentarai WHERE kurso_id = 3";
$third_course = "SELECT COUNT(kurso_id) as komentarai FROM kurso_komentarai WHERE kurso_id = 4";
$fourth_course = "SELECT COUNT(kurso_id) as komentarai FROM kurso_komentarai WHERE kurso_id = 2";

$result1 = mysqli_query($connect, $first_course);
$result2 = mysqli_query($connect, $second_course);
$result3 = mysqli_query($connect, $third_course);
$result4 = mysqli_query($connect, $fourth_course);

$first = mysqli_fetch_array($result1);
$second = mysqli_fetch_array($result2);
$third = mysqli_fetch_array($result3);
$fourth = mysqli_fetch_array($result4);