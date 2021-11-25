<?php

namespace App\Controller;

use App\Model\PlaylistManager;

class PlaylistController extends AbstractController
{

    public function getPlaylistUrl(string $tag)
    {
        $playlistManager = new PlaylistManager();
        $playlist = $playlistManager->selectByIdAndTag($tag);

        return $this->twig->render('Home/index.twig.html', ['playlist' => $playlist]);
    }
}