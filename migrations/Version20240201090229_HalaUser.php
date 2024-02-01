<?php

declare(strict_types=1);

namespace HR\Migrations;

use Doctrine\DBAL\Types\Types;
use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240201090229_HalaUser extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $table = $schema->createTable('user');
        $table->addColumn('id', Types::INTEGER)->setAutoincrement(true);
        $table->addColumn('name', Types::STRING);
        $table->addColumn('age', Types::INTEGER);

        $table->setPrimaryKey(['id']);
        $table->addUniqueConstraint(['id']);

    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $schema->dropTable('HalaUser');
    }
}
