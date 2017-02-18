<?php

namespace app\components;


use app\models\Categoriya;
use yii\base\Widget;


class MenuWidget extends Widget
{

    public function run()
    {
        $categorys = Categoriya::find()->all();
        return $this->render('menu', compact('categorys'));
    }
}

?>