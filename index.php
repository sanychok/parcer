<?php
header('Content-type: text/html; charset=utf-8');
require 'phpQuery-onefile.php';
function debug($arr){
    echo '<pre>' . print_r($arr, true) . '</pre>';
}


$url = 'http://hotline.ua/computer/noutbuki-netbuki/883-9886/?ufid=12558';


$ch = curl_init();


$agent = $_SERVER["HTTP_USER_AGENT"];
curl_setopt($ch, CURLOPT_USERAGENT, $agent);

// задаем URL
curl_setopt($ch, CURLOPT_URL, $url );

curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

curl_setopt($ch, CURLOPT_COOKIE, "gd_order=0");


// выполняем запрос для авторизации
$postResult = curl_exec($ch);
$doc = phpQuery::newDocument($postResult);
foreach ($doc->find('#catalogue div.cell.gd div.cell.gd-item.flex-block.flex-stretch.flex-wrap')as $item){
        $item = pq($item);
        $img= $item->find('div.cell.gd-box div.cell.gd-promo-brdr div.gd-img-cell.pic-tooltip a.g_statistic img.max-120')->attr('src');
        $text['image'][] = 'hotline.ua'.$img;
       $text['title'][]= $item->find('div.cell.gd-box div.cell.gd-promo-brdr div.gd-img-cell.pic-tooltip a.g_statistic img.max-120')->attr('alt');


    if(count($text['image'])>=15){
        break;
    }

}
foreach ($text['image'] as $image){
    $link = mysqli_connect("localhost", "root", "", "hotline");

    if (mysqli_connect_errno()) {
        printf("Соединение не удалось: %s\n", mysqli_connect_error());
        exit();
    }
    $query = "INSERT INTO hotline  SET  image ='{$image}'";

  mysqli_query($link, $query);


  mysqli_close($link);

}
$i=1;
foreach ($text['title'] as $title){
    $link = mysqli_connect("localhost", "root", "", "hotline");

    if (mysqli_connect_errno()) {
        printf("Соединение не удалось: %s\n", mysqli_connect_error());
        exit();
    }
    $query = "UPDATE  hotline  SET  title ='{$title}' WHERE id = '{$i}'";

    mysqli_query($link, $query);


    mysqli_close($link);
    $i++;
}
echo "Parser worked";
