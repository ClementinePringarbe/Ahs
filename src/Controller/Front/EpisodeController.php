<?php

namespace App\Controller\Front;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EpisodeController extends AbstractController
{
    /**
     * @Route("/front/episode", name="app_front_episode")
     */
    public function index(): Response
    {
        return $this->render('front/episode/index.html.twig', [
            'controller_name' => 'EpisodeController',
        ]);
    }
}
