<?php

namespace App\Controller;

use App\Model\PlaylistManager;

class PlaylistController extends AbstractController
{

    public function getPlaylistUrl($answer = "")
    {
        $playlistManager = new PlaylistManager();
        $playlist = $playlistManager->selectByIdAndTag($answer);
        return $this->twig->render('Home/index.html.twig', ['playlist' => $playlist]);
    }
}
