<?php

declare(strict_types=1);

namespace HR\Migrations;

use Doctrine\DBAL\Types\Types;
use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
<<<<<<<< HEAD:migrations/Version20240201074738_users_table.php
final class Version20240201074738_users_table extends AbstractMigration
========
final class Version20230619070854_books_seeder extends AbstractMigration
>>>>>>>> 176bdb03a6c0c1c1b1d76ab248f9adc1798e2434:migrations/Version20230619070854_books_seeder.php
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $table = $schema->createTable('users');
        $table->addColumn('id', Types::INTEGER)->setAutoincrement(true);
        $table->addColumn('name', Types::STRING);
        $table->addColumn('email', Types::STRING);
        $table->addColumn('age', Types::INTEGER);

        $table->setPrimaryKey(['id']);
        $table->addUniqueConstraint(['id']);
    
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $schema->dropTable('users');
    }
}
