<?php

use yii\helpers\Html;
use yii\widgets\LinkPager;

?>

<h1>Catálogo de libros</h1>
<div class="row">

<?php foreach ($libros as $libro): ?>

    
    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
        <a href="#" class="thumbnail">
            
            <br><?= Html::img($libro->imagen); ?><br><br>
            <?= Html::encode("{$libro->titulo}") ?><br>
            <?= Html::encode("$({$libro->codigo_barras}).00") ?>
        </a>
    </div>
    
    

<?php endforeach; ?>

</div>

<?= LinkPager::widget(['pagination'=>$paginacion]) ?>