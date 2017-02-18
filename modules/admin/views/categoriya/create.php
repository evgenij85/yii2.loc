<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Categoriya */

$this->title = 'Create Categoriya';
$this->params['breadcrumbs'][] = ['label' => 'Categoriyas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="categoriya-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
