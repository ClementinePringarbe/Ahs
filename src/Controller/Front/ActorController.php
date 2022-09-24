<?php

namespace App\Controller\Front;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ActorController extends AbstractController
{
    /**
     * @Route("/front/actor", name="app_front_actor")
     */
    public function index(): Response
    {
        return $this->render('front/actor/index.html.twig', [
            'controller_name' => 'ActorController',
        ]);
    }
}
