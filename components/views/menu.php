<div class="list-group">

    <? foreach ($categorys as $category): ?>
    <a href="<?=\Yii::$app->urlManager->createUrl(['/categories/', 'id' => $category['id']])?>" class="list-group-item"><?=$category["name"]?></a>
    <? endforeach;?>

</div>
