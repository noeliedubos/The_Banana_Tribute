<?php

namespace App\Model;

class PlaylistManager extends AbstractManager
{
    public const TABLE = 'playlist';
    public const JOINTABLE = "tag";

    public function selectByIdAndTag($answer)
    {
        $statement = $this->pdo->prepare("SELECT t.tag, p.name, p.url 
        FROM playlist p JOIN tag t ON p.id = t.playlist_id 
        WHERE t.tag = :answer");
        $statement->bindValue('answer', $answer, \PDO::PARAM_STR);
        $statement->execute();

        return $statement->fetch();
    }
}
