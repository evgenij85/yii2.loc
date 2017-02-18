<?php

use yii\widgets\ListView;



echo ListView::widget([
    'dataProvider' => $listDataProvider,
    'itemView' => '_product_item',
    'pager' => [
        'firstPageLabel' => 'Первая',
        'lastPageLabel' => 'Последняя',
        'nextPageLabel' => 'Следующая',
        'prevPageLabel' => 'Предыдущая',
        'maxButtonCount' => 5,
    ],
]);
/*
      function() {



      return
        '
          <div class="tovar_block">
          <p class="photo_tovar_cat"><img src="/image/'.$product->photo_goods.'" width="50px"></a></p>
          <p class="price_tovar_cat"><b>Цена:'.$product->price.' </b>  грн</p>
           <p class="name"><a href="product/'.$product->id.'">'.$product->title.'</p>

      </div>

        ';
  }
  //'itemView' => 'product_list',

*/