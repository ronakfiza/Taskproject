<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Task;
use Faker\Factory as faker;

class Taskseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker=Faker::create();
        for ($i=0;$i<=50;$i++) {
        $task=new Task;
        $task->taskname=$faker->name;
        $task->save();
        }
    }
}
