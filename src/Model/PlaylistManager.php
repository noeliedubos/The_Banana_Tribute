<?php

namespace App\Model;

class PlaylistManager extends AbstractManager
{
    public const TABLE = 'playlist';
    public const JOINTABLE = "tag";

    public function selectByIdAndTag($answer)
    {
        if ($answer) {
            $statement = $this->pdo->prepare("SELECT t.tag, p.name, p.url 
            FROM playlist p JOIN tag t ON p.id = t.playlist_id 
            WHERE t.tag IN ('" . str_replace(" ", "', '", $answer) . "');");

            $statement->execute();
            return $statement->fetch();
        }
    }
}
