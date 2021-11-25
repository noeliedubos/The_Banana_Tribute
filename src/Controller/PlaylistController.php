<?php

namespace App\Controller;

use App\Model\PlaylistManager;

class PlaylistController extends AbstractController
{

    public function getPlaylistUrl()
    {
        $playlistManager = new PlaylistManager();
        $playlist = $playlistManager->selectAll();
        return $this->twig->render('Home/index.twig.html', ['playlist' => $playlist]);
    }
}
