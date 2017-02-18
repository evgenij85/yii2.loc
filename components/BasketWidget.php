<?php

namespace app\components;


//use app\models\Products;
use yii\base\Widget;


class BasketWidget extends Widget
{

    public function run()
    {
        return $this->render('basket');
    }
}

?>