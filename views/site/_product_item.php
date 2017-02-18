<div class="tovar_block">
    <p class="photo_tovar_cat"><img src="/image/<?=$model->photo_goods?>" width="50px" height="150px"></a></p>
    <p class="price_tovar_cat"><b>Цена: <?=$model->price?> </b>  грн</p>
    <p class="name"> <a href="<?=\Yii::$app->urlManager->createUrl(['/product', 'id' => $model->id])?>"><?=$model->title?></a> </p>
</div>

