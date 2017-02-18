<h1>Вывод категорий</h1>

<? if ($categorytovar): ?>
    <? foreach ($categorytovar as $product): ?>
        <div class="tovar_block">
            <p class="photo_tovar_cat"><a
                        href="<?= \Yii::$app->urlManager->createUrl(['/product/', 'id' => $product['id']]) ?>"><img
                            src="/image/<?= $product['photo_goods'] ?>" height="150px"></a></p>
            <p class="price_tovar_cat"><b>Цена:</b> <?= $product['price'] ?> грн</p>
            <p class="name_cat_tovar"><a
                        href="<?= \Yii::$app->urlManager->createUrl(['/product/', 'id' => $product['id']]) ?>"><?= $product['title'] ?></a>
            </p>
        </div>
    <? endforeach; ?>
    <div class="post_navigation">
        <?= \yii\widgets\LinkPager::widget(['pagination' => $pages]) ?>
    </div>
<? else: ?>
    В этой категории нет товаров
<? endif; ?>
