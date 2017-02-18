<?php

namespace app\controllers;
use app\models\Products;


class BasketController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $tovar = Products::find()->all();
        /*
        $count_cart_edit = strip_tags(trim($_POST["count_cart_edit"]));
        $id = strip_tags(trim($_POST["id"]));

        if ($count_cart_edit) {

            if (preg_match('/^[0-9]+$/i', $count_cart_edit)) {
               $this->model->count_cart_edit($id, $count_cart_edit);
            } else  $data['err'] = "в поле количество только цыфры!!";
        }

        $del_id = strip_tags(trim($_GET["del_id"]));
        $id = strip_tags(trim($_GET["id"]));
        $del_card = strip_tags(trim($_GET["del_card"]));

        if ($del_id) {
            $this->model->del_card_id($id);
        }
        if ($del_card) {
            $this->model->del_card();
        }
        $data['goods'] = $this->model->Goods();
        */

        return $this->render('index', compact('tovar'));
    }

}
