<?php
namespace App\Model;

use App\Utilerias\SQLModel;

class Notifications extends SQLModel{
   
    public function __construct()
    {
        parent::__construct();
    }

    public function getCategoria(){
        $qry = ' SELECT';
        $qry .= ' "idCategoria",';
        $qry .= ' "NombreCategoria"';
        $qry .= ' FROM public."Categoria"';
        $qry .= ' WHERE "Activo" = 1';
        $result = $this->executeQuery($qry);
        return $result;
    }

    public function getUsuarioCategoria(){
        $qry = ' SELECT';
        $qry .= ' us."idUsuario",';
        $qry .= ' us."Nombre",';
        $qry .= ' us."ApellidoPaterno",';
        $qry .= ' us."ApellidoMaterno",';
        $qry .= ' us."Email",';
        $qry .= ' ct."idCategoria",';
        $qry .= ' ct."NombreCategoria"';
        $qry .= ' FROM "UsuarioCategoria" uc ';
        $qry .= ' INNER JOIN "Usuarios" us ON uc."idUsuario" = us."idUsuario"';
        $qry .= ' INNER JOIN "Categoria" ct ON ct."idCategoria" = uc."idCategoria"';

        $result = $this->executeQuery($qry);
        return $result;
    }

    public function insertNotification($data){
        $qry = ' SELECT * FROM "insertNotification_usuario"('."'".$data."'".')';
        $result = $this->executeQuery($qry);
        return $result;
    }
}