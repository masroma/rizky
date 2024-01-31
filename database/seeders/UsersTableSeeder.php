<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        // Menghapus data yang mungkin sudah ada sebelumnya
        DB::table('users')->truncate();

        // Membuat 100 data pengguna
        \App\Models\User::factory(100)->create();
    }
}
