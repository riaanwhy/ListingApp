<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Kalender;

/**
 * KalenderSearch represents the model behind the search form of `backend\models\Kalender`.
 */
class KalenderSearch extends Kalender
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'tutup', 'terkini', 'created_at', 'created_by', 'updated_at', 'updated_by'], 'integer'],
            [['fiskal','tgl_awal','tgl_akhir'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Kalender::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'fiskal' => $this->fiskal,
            'tutup' => $this->tutup,
            'terkini' => $this->terkini,
            'tgl_awal' => $this->tgl_awal,
            'tgl_akhir' => $this->tgl_akhir,      
            'created_at' => $this->created_at,
            'created_by' => $this->created_by,
            'updated_at' => $this->updated_at,
            'updated_by' => $this->updated_by,
        ]);

        return $dataProvider;
    }
}
