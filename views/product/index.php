<? if ($tovar) : ?>

    <? foreach ($tovar as $product): ?>
        <h1><?= $tovar['content'] ?></h1>


        <div class="tovar">
            <p class="photo_tovar"><img src="/image/<?= $product['photo_goods'] ?>"></p>
            <div class="info_block">
                <ul class="info_tovar">

                    <li>Рейтинг товара:<?= $product['rating'] ?></li>
                    <li>Цена : <?= $product['price'] ?> грн</li>
                    <li>Дата добавления : <?= date("d-M-Y", $product['timestamp']) ?></li>
                    <li>Акция: <?= $product['rating'] ?></li>
                    <li><a href="<?= \Yii::$app->urlManager->createUrl(['/product/order', 'id' => $product['id']]) ?>">
                            <button type="button" class="btn btn-danger btn-lg">Заказать</button>
                        </a></li>

                    </li>
                </ul>
            </div>
            <div class="info_block">
                <p>Описание</p>
                <p>  <? if ($product['content']) {
                        echo $product['content'];
                    } else echo "Нет описания товара ";
                    ?>
                </p>
            </div>


        </div>


    <? endforeach; ?>

<? else : ?>
    <p>Упс чтото пошло не так :(</p>
<? endif; ?>