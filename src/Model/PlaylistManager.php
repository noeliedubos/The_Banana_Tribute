<?php

namespace App\Model;

class PlaylistManager extends AbstractManager
{
    public const TABLE = 'playlist';
    public const JOINTABLE = "tag";

    public function selectByIdAndTag(string $tag): array
    {
        $query = "SELECT t.tag, p.name, p.url 
        FROM " . static::TABLE . ' p JOIN ' . static::JOINTABLE . " t 
        ON p.id = t.playlist_id WHERE t.tag = '" . $tag . "';";

        return $this->pdo->query($query)->fetchAll();
    }
}
