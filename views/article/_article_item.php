<?php
/** @var $model app\models\Article */
?>

<div>
    <a href="<?php echo yii\helpers\Url::to(['/article/view', 'slug' => $model->slug])?>">
        <?php echo yii\helpers\Html::encode($model->title)?>
    </a>
    <div>
        <?php echo yii\helpers\StringHelper::truncateWords(yii\helpers\Html::encode($model->body), 40)?>
    </div>
    <p class="text-muted text-right">
        <small>Created At: <b><?php echo Yii::$app->formatter->asRelativeTime($model->created_at); ?></b><br>
        By: <b><?php echo $model->createdBy->username ?></b>
        </small>
    </p>
    <hr>
</div>