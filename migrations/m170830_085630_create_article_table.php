<?php

use yii\db\Migration;

/**
 * Handles the creation of table `article`.
 */
class m170830_085630_create_article_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('article', [
            'id' => $this->primaryKey(),
            'title' => $this->string()->notNull(),
            'content' => $this->text(),
            'status' => $this->integer()->defaultValue(0),
            'created_at' => $this->datetime()->notNull(),
            'category_id' => $this->integer()->defaultValue(0),
            'price' => $this->float()->defaultValue(0),
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('article');
    }
}
