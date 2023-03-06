<?php
/** @var $model app\models\Article */
?>

<div>
    <a href="<?php echo yii\helpers\Url::to(['/article/view', 'id' => $model->id])?>">
        <?php echo yii\helpers\Html::encode($model->title)?>
    </a>
    <div>
        <?php echo yii\helpers\StringHelper::truncateWords(yii\helpers\Html::encode($model->body), 40)?>
    </div>
    <hr>
</div>