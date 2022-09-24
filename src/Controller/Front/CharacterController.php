<?php

namespace App\Controller\Front;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CharacterController extends AbstractController
{
    /**
     * @Route("/front/character", name="app_front_character")
     */
    public function index(): Response
    {
        return $this->render('front/character/index.html.twig', [
            'controller_name' => 'CharacterController',
        ]);
    }
}
