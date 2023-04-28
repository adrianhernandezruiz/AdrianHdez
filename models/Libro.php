<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "catalogo_libros".
 *
 * @property int $id
 * @property string $titulo
 * @property string $descripcion
 * @property float $codigo_barras
 * @property string $imagen
 */
class Libro extends \yii\db\ActiveRecord
{
    public $archivo;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'catalogo_libros';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['titulo', 'descripcion', 'codigo_barras'], 'required'],
            [['codigo_barras'], 'number'],
            [['titulo'], 'string', 'max' => 50],
            [['descripcion'], 'string', 'max' => 100],
            [['archivo'], 'file', 'extensions' => 'jpg,png'],

        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'titulo' => 'Título',
            'descripcion' => 'Descripción',
            'codigo_barras' => 'Código de Barras',
            'archivo' => 'Imagen',
        ];
    }
}
