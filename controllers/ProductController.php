<?php

namespace app\controllers;

use app\models\Products;


class ProductController extends \yii\web\Controller
{
    public function actionIndex($id = 0)
    {
        $tovar = Products::find()->where(['id' => $id])->all();
        return $this->render('index', compact('tovar'));
    }

    public function actionOrder($id = 0)
    {
        $tovar = Products::find()->where(['id' => $id])->all();
        $arr_card = [];
        if(\Yii::$app->session->has('basket')){
            $arr_card = \Yii::$app->session->get('basket');
        }
        if (array_key_exists($id, $arr_card)) {
            $arr_card[$id]++;
        } else {
            $arr_card[$id] = 1;
        }
        \Yii::$app->session->set('basket', $arr_card);

        return $this->render('order', compact('tovar'));
    }

}
