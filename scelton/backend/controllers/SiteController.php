<?php
namespace backend\controllers;

use Yii;

use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;




/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,                         
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {    
        //untuk memastikan akun in berhak tidaknya masuk dalam aplikasi ini
        //if (Yii::$app->user->identity->aplikasi_id==1 OR Yii::$app->user->identity->aplikasi_id==2) {
            return $this->render('index');
        //}else{      
        //    Yii::$app->user->logout();  
        //    return $this->goHome();
        //}   
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            if ($model->login()) {
            //    Yii::$app->MyComponent->eventLog(date('Y-m-d H:i:s'),'Login','Login','Login','Sukses');             
            }

            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {

        Yii::$app->MyComponent->eventLog(date('Y-m-d H:i:s'),'Logout','Logout','Logout','Sukses'); 
        Yii::$app->user->logout();

        return $this->goHome();
    }
 
}
