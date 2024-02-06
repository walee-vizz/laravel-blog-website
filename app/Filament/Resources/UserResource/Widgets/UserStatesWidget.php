<?php

namespace App\Filament\Resources\UserResource\Widgets;

use App\Models\User;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;

class UserStatesWidget extends BaseWidget
{
    protected function getStats(): array
    {
        $users = User::all();
        return [
            Stat::make('Total Users', count($users)),
            Stat::make('Total Admins', $users->where('role', User::ROLE_ADMIN)->count()),
            Stat::make('Total Editors', $users->where('role', User::ROLE_EDITOR)->count()),
        ];
    }
}
