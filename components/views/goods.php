<? foreach ($goods as $goods):?>
    <div class="tovar_block">
        <p class="photo_tovar_cat"><a href="tovar?id=<?=$goods['id']?>"><img src="image/<?=$goods['photo_smol']?>"></a></p>
        <p class="price_tovar_cat"><b>Цена:</b> <?=$goods['price']?> грн</p>
        <p class="name_cat_tovar"><a href="tovar?id=<?=$goods['id']?>"> <?=$goods['text_goods']?></a> </p>
    </div>
<? endforeach;?>