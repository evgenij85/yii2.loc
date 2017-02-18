<?php
use yii\widgets\ActiveForm;
use yii\helpers\Html;
?>

<?php $form = ActiveForm::begin(['options' => ['id'=>'testForm']]); ?>

    <?= $form->field($model, 'name')->label('Имя') ?>

    <?= $form->field($model, 'email') ?>
    <?= $form->field($model, 'text')->textarea(['rows'=>'5']) ?>

    <div class="form-group">
        <?= Html::submitButton('Login') ?>
    </div>

<?php ActiveForm::end(); ?>
