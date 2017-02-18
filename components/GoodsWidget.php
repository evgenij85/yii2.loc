<?php

namespace app\components;


use app\models\Products;
use yii\base\Widget;


class GoodsWidget extends Widget
{

    public function run()
    {
        $goods = Products::find()->all();
        return $this->render('goods', compact('goods'));
    }
}

?>