<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Model\Notifications as NotificationsModel;


class Notifications extends AbstractController{
    protected $NotificationsModel;
    public function __construct()
    {
       $this->NotificationsModel = new NotificationsModel();
    }

    /**
     * @Route(
     *      "/get-categorias",
     *      name="getCategorias",
     *      methods={"GET"},
     *      defaults={"idCategoria":0}
     * )
     */
    public function getCategoria(){
        $result_categoria = $this->NotificationsModel->getCategoria();
        return $this->json($result_categoria);
        //return $this->json(compact("idVisitante"));
    }

    /**
     * @Route(
     *  "/get-UsuarioCategoria",
     *  name="getUsuarioCategoria",
     *  methods={"GET"}   
     * )
     */
    public function getUsuarioCategoria(){
        $result_usuario_categoria = $this->NotificationsModel->getUsuarioCategoria();
        return $this->json($result_usuario_categoria);
    }


    /**
     * @Route(
     *      "/insert-notification",
     *      name="insertNotificacion",
     *      methods={"POST"},
     * )
     */

    public function insertNotification(Request $request){
        $post = $request->getContent();
        
        $jsonUser = $post;
        
        $insert_notificacion = $this->NotificationsModel->insertNotification($jsonUser);
        return $this->json($insert_notificacion);
    }
}