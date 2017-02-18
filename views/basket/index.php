<?php
/* @var $this yii\web\View */

?>
<h1>Корзина</h1>

<? if (!\Yii::$app->session->has('basket') || count(\Yii::$app->session->get('basket')) < 1) {
    echo "Ваша корзина пустая !!";
} else {
    $basket = \Yii::$app->session->get('basket');
    //var_dump($basket);
    ?>

    Количество товара в корзине: <?php echo count($basket); ?><br><br><br>

    <table style="border-collapse: collapse;">
        <tr>
            <td>ID товара</td>
            <td>Название</td>
            <td>Количество</td>
            <td>Цена</td>
            <td>Сумма</td>
        </tr>

        <?
        if ($data['err']) {
            echo $data['err'];
        } // показываем ошибку если чтото неправильно
        foreach ($basket as $key => $value) {

            for ($i = 0; $i < count($data['goods']); $i++) {

                if ($tovar[$i]['id'] == $key) { ?>

                    <tr>
                        <td><?= $key ?></td>
                        <td><? echo $tovar[$i]['title'] . "<br>"; ?></td>
                        <form action="" method="POST">
                            <td><input type="text" name="count_cart_edit" value="<?= $value; ?>">
                                <input type="hidden" name="id" value="<?= $key ?>">
                                <input type="submit" value="Изменить">
                                <Br></td>
                        </form>
                        <td><? echo $data['goods'][$i]['price'] . "<br>"; ?></td>
                        <td><? $summ1 += $summ = $value * $data['goods'][$i]['price'];
                            echo $summ . "<br>"; ?></td>
                        <td><a href="?id=<?= $key ?>">Удалить </a><br></td>
                    </tr>
                <? }
            }
        }
        ?>
        <tr>
            <td colspan="4">Сумма всего</td>
            <td><? $summ = $value * $goods[$key]['price'];
                echo $summ1 . "<br>"; ?></td>
            <td><a href="">Очистить корзину </a><br></td>
        </tr>
        <tr>
            <td colspan="6"><a href="/cart/orders" style="float:right;margin:0 10px 0 0;">Оформить заказ</a></td>
        </tr>
    </table>

<? } ?>


<br>
<!--Возврат на предыдущую или главную страницу-->
<? if ($_SERVER['HTTP_REFERER'] != "http://demo.justdo.dp.ua/cart") { ?>
    <a href="<?= $_SERVER['HTTP_REFERER']; ?>">Вернуться назад </a>
<? } else { ?>
    <a href="/">Перейти на главную </a>
<? } ?>

